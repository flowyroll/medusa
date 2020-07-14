.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1a231, %r9
nop
nop
nop
nop
nop
sub $36343, %rax
movb (%r9), %r12b
dec %r13
lea addresses_UC_ht+0x100c5, %rsi
lea addresses_WC_ht+0x19c05, %rdi
nop
nop
nop
nop
and %r9, %r9
mov $46, %rcx
rep movsw
nop
nop
inc %r12
lea addresses_A_ht+0x197a5, %r12
nop
nop
nop
sub $26415, %rdi
mov (%r12), %ax
sub %r13, %r13
lea addresses_UC_ht+0x18a45, %rcx
nop
nop
cmp $60907, %r12
mov (%rcx), %rdi
nop
sub $27127, %rcx
lea addresses_normal_ht+0x12179, %rdi
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, (%rdi)
cmp $33412, %r9
lea addresses_WT_ht+0x1dfed, %r9
nop
nop
nop
and $41581, %rsi
mov (%r9), %r13
xor $26123, %rax
lea addresses_WC_ht+0xba85, %rsi
lea addresses_WC_ht+0x16025, %rdi
nop
nop
nop
nop
nop
add $31511, %rax
mov $32, %rcx
rep movsq
nop
nop
nop
nop
cmp $30, %rax
lea addresses_normal_ht+0x1b385, %rsi
lea addresses_normal_ht+0x1e6f, %rdi
nop
nop
dec %r11
mov $114, %rcx
rep movsq
nop
nop
sub $4716, %rcx
lea addresses_A_ht+0xbaed, %r11
clflush (%r11)
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %r9
movq %r9, %xmm3
movups %xmm3, (%r11)
xor %r13, %r13
lea addresses_normal_ht+0x3c5, %r9
nop
nop
nop
nop
nop
xor $5321, %rcx
mov (%r9), %rax
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x15fa, %r13
nop
nop
nop
nop
lfence
movups (%r13), %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x6805, %rcx
nop
nop
nop
nop
nop
and %rsi, %rsi
mov (%rcx), %rdi
nop
and $42948, %r11
lea addresses_WT_ht+0xcedd, %rax
clflush (%rax)
inc %r9
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
and %r9, %r9
lea addresses_normal_ht+0x1e0a5, %rsi
sub $41059, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
and $0xffffffffffffffc0, %rsi
vmovaps %ymm0, (%rsi)
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0xe585, %r12
cmp $54838, %r9
movl $0x61626364, (%r12)
nop
nop
add $32576, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rbp
push %rbx

// Store
mov $0x50d2350000000985, %rbx
xor $14571, %r12
movw $0x5152, (%rbx)
nop
nop
nop
nop
and $23319, %rbp

// Faulty Load
mov $0x50d2350000000985, %rbp
nop
nop
nop
nop
nop
dec %r10
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'79': 1, 'f0': 3, '00': 9384, '52': 12441}
00 00 52 00 52 00 52 00 52 52 52 00 52 52 00 00 52 52 52 52 00 52 00 52 00 52 00 52 00 52 00 52 00 52 00 00 00 52 00 52 00 52 52 52 52 52 52 00 52 00 00 00 52 00 52 00 52 52 52 52 52 00 52 00 52 52 00 52 00 52 52 00 00 52 00 52 00 52 00 52 52 52 00 52 00 52 00 52 52 00 00 00 00 52 00 52 52 52 00 52 00 52 00 52 52 52 52 52 52 52 00 52 52 52 00 52 00 52 00 52 52 52 00 52 00 52 00 52 00 52 52 00 00 52 52 52 00 52 52 00 00 52 52 00 00 00 52 52 00 52 00 52 00 52 52 00 00 52 00 52 52 52 52 00 52 00 52 00 52 00 00 00 52 00 00 52 00 52 00 52 00 52 00 52 52 00 52 00 00 52 00 52 00 52 00 52 52 52 00 00 52 00 52 00 52 00 52 00 52 00 52 52 00 00 00 52 52 00 00 52 00 52 00 52 00 52 00 52 00 52 00 52 00 52 00 52 52 52 52 00 52 00 00 52 52 00 52 52 00 00 00 00 00 00 00 52 00 52 00 52 00 52 52 00 00 52 00 52 00 52 52 52 00 52 00 52 52 52 00 52 52 52 00 52 00 52 52 00 52 52 52 00 52 00 52 00 00 52 00 52 52 00 00 52 52 00 52 00 52 00 52 00 00 00 52 52 00 52 00 52 00 52 00 52 52 00 52 52 52 00 52 00 52 52 00 52 52 00 00 52 00 52 00 52 00 52 00 52 00 52 00 52 52 52 52 52 00 52 00 52 52 52 52 52 00 52 52 52 00 52 52 00 52 00 52 00 52 52 00 00 52 52 00 52 52 52 52 00 52 52 00 52 00 52 00 52 00 52 00 52 52 52 52 00 52 00 52 00 52 52 52 52 00 52 00 52 52 00 52 00 52 00 52 00 52 00 52 00 52 00 52 52 00 52 00 52 52 00 52 52 00 52 52 00 52 52 52 52 00 52 00 52 52 52 00 52 00 52 52 52 00 52 52 52 52 00 52 52 52 00 00 52 00 52 00 52 52 52 00 52 00 52 00 52 00 52 00 52 52 00 00 52 00 52 00 52 00 00 52 52 52 00 52 00 52 00 52 00 52 00 52 00 52 00 52 00 52 00 52 52 52 00 52 52 52 00 52 00 52 00 52 00 52 52 52 00 52 52 52 00 00 52 00 52 52 52 00 52 00 00 00 52 52 00 52 00 52 00 52 00 52 00 52 00 52 00 52 52 00 00 52 00 52 00 52 52 00 00 52 52 52 00 52 52 52 00 52 00 00 52 00 52 52 00 52 00 52 00 52 52 00 52 00 52 00 52 52 00 52 52 52 00 00 52 52 00 52 00 52 52 00 00 52 00 52 00 52 00 52 00 52 52 00 00 00 52 00 52 00 52 52 00 52 52 00 00 52 00 52 52 52 00 52 00 52 52 52 52 52 52 00 52 00 52 00 52 00 52 00 52 00 00 00 52 52 00 52 00 52 00 52 00 52 00 52 52 52 00 52 52 00 00 52 52 00 00 52 52 00 52 52 00 52 00 00 00 52 52 00 52 00 52 00 52 00 52 00 52 00 52 00 52 00 52 00 00 00 52 00 52 00 52 00 52 52 00 00 00 52 00 52 00 52 00 52 00 52 00 52 52 52 00 52 00 52 00 52 52 00 52 00 52 00 00 00 52 00 52 00 52 52 00 52 00 52 00 52 00 52 00 00 00 52 00 52 52 52 00 52 00 52 00 52 00 52 52 52 00 52 52 52 52 00 52 00 52 00 52 00 00 52 00 52 52 00 52 00 52 52 00 00 52 00 52 00 52 00 52 00 52 00 52 00 52 00 52 00 52 00 52 00 52 52 00 52 52 00 52 00 52 52 00 52 00 52 00 52 52 52 00 52 00 52 00 00 00 52 00 52 00 00 52 00 52 52 00 52 00 52 00 52 00 52 00 52 00 52 52 52 00 52 00 52 00 52 52 00 00 52 00 52 00 52 00 52 52 52 52 00 52 00 52 00 52 00 52 00 52 00 52 52 52 00 52 52 52 00 52 00 52 00 52 00 52 00 52 52 52 00 52 52 52 52 00 52 52 00 52 52 52 52 00 52 52 00 52 52 52 52 52 00 52 52 00 52 52 00 52 00 52 00 00 00 52 00 52 00 52 00 52 00 52 00 52 52 00 52 00 52 00 52 00 52 00 52 52 52 52 00 00
*/
