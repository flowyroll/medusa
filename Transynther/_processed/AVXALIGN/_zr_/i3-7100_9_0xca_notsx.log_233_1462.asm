.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xb825, %rsi
lea addresses_normal_ht+0xa8fe, %rdi
nop
nop
nop
nop
nop
xor $21342, %rbp
mov $93, %rcx
rep movsw
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x73a6, %r14
nop
nop
nop
nop
nop
inc %rcx
mov (%r14), %r11w
nop
nop
sub %rbp, %rbp
lea addresses_A_ht+0x52ba, %rsi
lea addresses_UC_ht+0x2a6a, %rdi
clflush (%rdi)
nop
nop
sub %rax, %rax
mov $23, %rcx
rep movsq
nop
nop
nop
nop
dec %rax
lea addresses_WT_ht+0x14e7a, %r14
nop
nop
nop
nop
nop
xor $23620, %r11
movl $0x61626364, (%r14)
nop
nop
lfence
lea addresses_WC_ht+0x1defa, %rsi
lea addresses_D_ht+0x1ec0a, %rdi
nop
nop
nop
sub $19738, %rbp
mov $91, %rcx
rep movsb
nop
nop
xor $37556, %r14
lea addresses_A_ht+0x997a, %rsi
sub %rax, %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
and $0xffffffffffffffc0, %rsi
movntdq %xmm0, (%rsi)
nop
nop
nop
xor $40870, %rbp
lea addresses_WC_ht+0x188ce, %rsi
nop
nop
nop
inc %rax
movw $0x6162, (%rsi)
nop
nop
nop
cmp $5205, %r11
lea addresses_UC_ht+0x19332, %r14
nop
nop
nop
nop
and $24589, %rbp
movb (%r14), %cl
dec %r14
lea addresses_normal_ht+0x1b4fa, %r14
xor %rsi, %rsi
movb (%r14), %al
and %r11, %r11
lea addresses_A_ht+0x502a, %rsi
lea addresses_normal_ht+0xa7a, %rdi
nop
and %r9, %r9
mov $104, %rcx
rep movsl
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x1bcfa, %rax
nop
nop
nop
nop
nop
inc %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0x824a, %rsi
lea addresses_UC_ht+0xf4fa, %rdi
clflush (%rdi)
nop
sub %rax, %rax
mov $0, %rcx
rep movsw
add $17140, %rdi
lea addresses_A_ht+0xeefa, %rdi
clflush (%rdi)
nop
nop
nop
cmp $48453, %rbp
mov (%rdi), %ecx
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x11afa, %rsi
lea addresses_D_ht+0x42fa, %rdi
nop
nop
nop
xor %rax, %rax
mov $0, %rcx
rep movsl
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0x989a, %rsi
lea addresses_A+0xbbca, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $78, %rcx
rep movsw
nop
nop
nop
nop
add %rbx, %rbx

// Faulty Load
lea addresses_US+0x1bcfa, %rsi
nop
nop
nop
xor $58685, %r12
movb (%rsi), %bl
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 4, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'00': 233}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
