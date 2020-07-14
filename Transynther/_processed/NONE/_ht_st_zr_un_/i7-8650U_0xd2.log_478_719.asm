.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xa1a7, %r13
nop
nop
add $30747, %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r13)
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x19a7, %r14
nop
nop
xor %r13, %r13
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
dec %r14
lea addresses_A_ht+0xf27, %rdx
add %r12, %r12
movups (%rdx), %xmm5
vpextrq $1, %xmm5, %rbp
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x5538, %r13
nop
nop
xor %rax, %rax
mov (%r13), %r12d
nop
nop
nop
cmp $49229, %rax
lea addresses_UC_ht+0x8e0f, %rdx
nop
nop
nop
nop
nop
and %r14, %r14
movb (%rdx), %bl
nop
xor $41942, %rax
lea addresses_WC_ht+0x12b27, %r12
clflush (%r12)
nop
nop
nop
nop
inc %rbp
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x19da7, %r13
nop
nop
nop
sub $31568, %rdx
mov (%r13), %r14
nop
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x12da7, %r13
nop
nop
nop
nop
sub $46101, %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm0
vmovups %ymm0, (%r13)
nop
nop
xor $17188, %rbp
lea addresses_D_ht+0xc4f7, %rsi
lea addresses_WT_ht+0x16fe7, %rdi
nop
sub %rbx, %rbx
mov $23, %rcx
rep movsb
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x1baa7, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov (%rdi), %ebx
nop
nop
nop
nop
nop
and $52787, %r12
lea addresses_normal_ht+0x1ada7, %rsi
lea addresses_UC_ht+0x4ea5, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
and %rbp, %rbp
mov $39, %rcx
rep movsw
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x13ca7, %rsi
lea addresses_normal_ht+0x5067, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $126, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $7770, %r13
lea addresses_D_ht+0x101b7, %r14
nop
nop
sub $31964, %rdx
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
nop
inc %rdx
lea addresses_WC_ht+0x109a7, %rdx
nop
nop
nop
nop
nop
add $19201, %r12
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
nop
nop
nop
xor $62446, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbp

// Faulty Load
lea addresses_A+0x1a9a7, %r11
nop
nop
nop
nop
nop
add $37188, %r8
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rbp
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'46': 243, 'bd': 1, '00': 195, 'ff': 32, '18': 4, '30': 1, '47': 1, '48': 1}
46 46 46 bd 00 00 46 ff 00 46 00 46 00 00 00 46 46 00 46 00 00 46 00 ff 00 46 00 46 00 00 46 00 46 46 46 00 46 46 46 ff 00 46 46 46 46 00 00 00 18 00 00 00 46 46 46 00 00 46 46 ff ff 46 46 00 46 46 46 46 ff 46 00 00 00 00 46 46 46 46 00 00 46 46 46 00 46 46 46 46 46 00 46 46 46 00 46 00 46 ff 46 46 00 ff 46 46 00 00 00 00 46 00 46 00 46 46 00 46 ff 46 46 00 00 00 46 46 46 00 46 46 46 46 00 46 00 46 46 ff 00 46 00 18 00 00 00 46 00 46 00 46 ff 46 46 00 ff 00 46 46 46 46 ff 46 46 46 46 46 00 ff 46 ff 00 00 00 46 00 00 46 46 00 00 00 00 46 00 46 00 00 00 46 46 46 ff 00 00 46 46 ff 30 46 46 46 00 46 46 46 00 00 ff 00 46 00 00 46 00 00 ff 46 00 46 46 00 46 00 46 00 46 00 46 00 46 46 00 00 00 00 00 00 00 00 00 46 46 46 46 00 00 47 ff 00 46 ff 00 00 ff 46 ff 46 00 46 46 00 ff 46 00 00 46 46 46 46 46 00 00 46 46 46 46 ff 00 46 46 00 00 00 ff 46 46 00 46 00 00 46 00 46 46 46 46 00 46 46 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 46 46 46 46 46 00 46 00 46 46 46 46 00 00 46 00 00 46 00 46 00 46 00 ff 00 46 46 46 46 46 00 00 46 00 46 00 46 46 ff 46 00 00 46 00 46 46 46 00 46 46 00 00 46 48 00 46 00 00 46 46 46 46 46 00 46 46 00 00 46 46 46 00 46 00 00 00 46 46 46 00 00 00 46 46 46 ff 46 46 ff 46 46 46 46 46 46 ff 46 46 00 46 00 00 46 46 18 00 46 00 00 46 46 18 00 46 46 46 46 46 00 00 00 00 46 00 00 46 46 46 46 46 00 46 46 46 00 ff 46 00 46 46 46 00 00 00 46 46 46 00 46 46 00 46 00 46 00 46 00 46
*/
