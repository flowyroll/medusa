.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1c92a, %r12
cmp $33256, %rdx
mov (%r12), %r15d
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0xdd92, %rsi
lea addresses_normal_ht+0x2382, %rdi
nop
xor $45104, %r14
mov $100, %rcx
rep movsb
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x11b0e, %r14
nop
nop
add %r12, %r12
mov (%r14), %ebx
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x2312, %r12
nop
nop
nop
nop
nop
sub %rdx, %rdx
movb $0x61, (%r12)
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1b302, %rsi
lea addresses_A_ht+0x1190a, %rdi
and $1934, %r12
mov $121, %rcx
rep movsq
xor %rbx, %rbx
lea addresses_UC_ht+0x9952, %rsi
lea addresses_D_ht+0x11052, %rdi
nop
xor %r15, %r15
mov $32, %rcx
rep movsw
nop
nop
cmp $32926, %rbx
lea addresses_normal_ht+0x10974, %rsi
lea addresses_WC_ht+0x5d52, %rdi
nop
nop
add %r14, %r14
mov $11, %rcx
rep movsl
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x72d2, %rbx
nop
nop
dec %r15
mov (%rbx), %r12
nop
nop
nop
nop
cmp $59932, %r14
lea addresses_WT_ht+0x12e52, %rsi
lea addresses_WC_ht+0x5d52, %rdi
nop
cmp %r15, %r15
mov $91, %rcx
rep movsw
nop
nop
cmp $57682, %rcx
lea addresses_UC_ht+0xfec2, %rsi
lea addresses_D_ht+0x19152, %rdi
nop
nop
sub %r14, %r14
mov $49, %rcx
rep movsw
and %rdi, %rdi
lea addresses_WC_ht+0x1cd52, %rsi
add %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rsi)
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_WT+0xa552, %rcx
nop
add $56120, %r11
movw $0x5152, (%rcx)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r11
nop
nop
xor %rcx, %rcx

// Store
lea addresses_WC+0xe152, %rsi
clflush (%rsi)
nop
and $65053, %r15
movb $0x51, (%rsi)
nop
nop
nop
nop
sub %r9, %r9

// Faulty Load
mov $0x5f7d800000000d52, %r11
nop
add %rcx, %rcx
mov (%r11), %r13d
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
