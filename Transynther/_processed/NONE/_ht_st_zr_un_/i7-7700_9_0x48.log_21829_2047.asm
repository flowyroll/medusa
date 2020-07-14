.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x74b9, %rsi
lea addresses_A_ht+0xb89, %rdi
nop
nop
nop
nop
nop
add $62170, %r15
mov $105, %rcx
rep movsl
sub $25072, %rsi
lea addresses_UC_ht+0xcdb9, %r14
nop
nop
nop
nop
xor $16240, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
and $0xffffffffffffffc0, %r14
vmovntdq %ymm5, (%r14)
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0xbdb9, %r14
nop
nop
nop
nop
nop
cmp $40768, %rdx
movups (%r14), %xmm3
vpextrq $0, %xmm3, %r15
nop
nop
nop
sub $19087, %rdx
lea addresses_WC_ht+0x19979, %rdi
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0xc639, %rsi
nop
nop
nop
cmp %rcx, %rcx
mov (%rsi), %dx
nop
nop
nop
and $827, %rsi
lea addresses_WC_ht+0x4d09, %rdx
nop
nop
nop
nop
and $27122, %rcx
movl $0x61626364, (%rdx)
nop
add %rdx, %rdx
lea addresses_normal_ht+0xd3b9, %rsi
lea addresses_UC_ht+0xfb1e, %rdi
nop
cmp %rbx, %rbx
mov $2, %rcx
rep movsl
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x1dd9, %r14
inc %rsi
mov (%r14), %di
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x15bf9, %rcx
xor $11207, %rdx
movw $0x6162, (%rcx)
nop
nop
nop
nop
xor $22606, %r11
lea addresses_WT_ht+0x4db9, %rdi
clflush (%rdi)
nop
nop
cmp $50280, %rdx
mov (%rdi), %ecx
nop
nop
dec %r15
lea addresses_WT_ht+0x139b9, %rsi
nop
nop
nop
cmp %rbx, %rbx
mov (%rsi), %r11w
nop
nop
nop
add $47287, %rsi
lea addresses_WC_ht+0x1b9b9, %rdx
nop
nop
nop
sub %rbx, %rbx
movups (%rdx), %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x108b9, %r11
nop
nop
nop
nop
nop
and $52447, %rbx
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0x1ad73, %rsi
lea addresses_normal_ht+0x4c79, %rdi
nop
cmp %rdx, %rdx
mov $13, %rcx
rep movsq
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rsi

// Faulty Load
lea addresses_A+0xc1b9, %r8
cmp %r15, %r15
movups (%r8), %xmm6
vpextrq $0, %xmm6, %r12
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rsi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'53': 397, '47': 2146, '3c': 12, '01': 67, '48': 615, 'c0': 14, 'ff': 9075, '46': 488, '44': 241, '49': 382, '00': 8203, '10': 143, '50': 46}
ff 46 ff 00 ff 00 00 ff 53 00 ff ff ff 00 00 ff 00 00 00 00 00 00 00 ff 00 ff 00 00 ff 46 47 00 47 00 ff 46 49 ff 00 ff 47 00 ff 47 ff ff 47 00 00 47 00 ff 00 00 ff 00 47 ff 49 00 ff 00 00 ff 00 49 00 ff 00 49 00 ff ff 00 47 ff 00 00 ff 47 00 53 ff 00 00 44 00 ff 00 ff ff ff 00 00 ff ff 00 48 ff 01 ff 00 ff ff ff 00 47 00 47 ff 00 ff ff 00 ff 00 00 ff ff 00 ff 00 ff 46 ff 00 ff ff 00 00 ff 00 48 ff 48 00 48 ff 49 47 47 00 ff 47 00 44 00 46 ff 00 46 ff 47 00 ff 48 ff 00 ff 00 00 ff 47 00 00 48 ff 48 00 46 ff ff 47 47 10 00 47 00 47 ff 00 00 00 48 47 ff ff 00 00 47 00 00 ff ff ff 00 ff 00 ff 00 ff 00 10 00 ff ff ff 47 47 00 00 ff 00 ff 00 46 ff ff 47 ff 00 00 00 ff 00 00 00 00 00 47 47 00 ff 00 ff 00 ff ff ff 48 47 ff 00 ff 00 ff 47 00 ff 53 00 ff 00 00 ff ff 49 50 ff 44 ff 46 00 00 00 ff ff ff 00 46 ff ff 00 00 00 47 00 ff ff ff ff ff 00 48 47 47 ff 00 ff 47 ff 47 47 ff ff 50 00 47 ff 48 ff 00 00 47 00 47 ff 00 ff 00 ff 00 00 00 00 47 00 53 ff ff ff 46 ff 00 ff ff ff 49 ff 00 3c ff 53 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 47 00 47 00 ff 00 47 ff 48 ff 00 00 00 00 ff 00 10 44 00 ff 00 ff ff ff ff 00 ff 00 00 00 00 00 ff 53 ff 00 ff ff ff ff 48 ff 01 00 ff 00 ff 00 ff ff 00 ff 00 00 ff 00 47 46 ff 00 00 00 00 ff 00 ff 00 46 ff ff 00 00 47 ff 00 44 ff ff 00 47 00 46 47 47 47 00 00 ff 00 00 00 00 00 ff ff 00 ff 47 47 00 ff ff 00 47 ff 00 ff 00 47 00 00 ff 00 00 00 ff 00 ff 00 00 ff ff 47 ff 48 ff 53 ff 48 00 ff ff ff ff 00 44 ff 00 00 ff ff 00 ff 00 ff ff 00 ff ff ff 01 49 ff ff 00 ff ff ff ff 00 00 47 ff 01 ff 48 ff 00 00 ff ff 00 00 00 ff ff ff 00 46 ff 00 46 ff 48 00 00 ff 49 ff 00 ff ff 00 ff 46 00 ff ff 00 ff 00 ff ff 00 ff 00 47 ff 00 00 00 00 ff 46 47 47 ff 50 ff ff 01 46 ff ff 00 ff ff 00 ff 47 00 ff 00 46 47 ff ff ff 00 ff 00 47 47 ff 00 ff ff 00 47 00 47 ff 00 ff 00 00 ff 00 46 47 ff ff 00 ff 00 00 47 00 00 10 00 00 ff 53 ff 00 ff 00 00 ff 00 ff 00 00 ff 00 00 48 00 ff ff ff 00 ff ff 00 ff ff ff 00 ff 00 00 ff 47 49 00 47 00 ff 48 ff 00 ff 00 ff 00 00 47 ff 47 49 00 00 ff 00 ff ff 00 ff 47 ff ff 00 47 44 00 47 ff 00 ff ff 00 ff ff 00 ff 44 ff 49 ff 49 47 ff ff 00 00 00 ff 53 ff 49 ff 00 ff ff 00 ff 00 ff 00 00 48 ff 00 ff 47 ff ff 47 00 ff 47 ff ff 00 00 ff ff 00 ff 00 00 ff 00 ff ff 00 48 44 00 ff ff 00 47 00 ff 00 ff 00 00 ff 00 46 ff ff ff 00 ff 00 ff 48 00 ff 47 00 00 c0 ff ff 00 47 00 00 00 00 00 47 00 00 00 47 ff ff 00 ff 00 ff ff ff ff ff 00 ff 48 ff ff ff ff 00 00 00 ff 00 ff 00 47 00 ff ff 00 ff 00 00 00 46 ff ff ff ff ff 00 00 ff 00 00 ff 47 ff 49 47 47 ff 00 00 00 00 00 ff 00 ff 00 ff 00 47 00 00 ff 00 00 47 47 00 ff ff 00 00 00 00 ff ff 00 ff ff 00 ff 53 00 ff ff ff ff ff 00 00 ff 01 ff 00 47 47 00 49 00 00 ff 46 ff 50 ff ff ff ff 00 00 00 00 ff ff ff 00 ff 00 00 ff 00 ff 00 ff 00 00 ff 00 00 ff 00 00 ff ff ff 00 ff 00 ff 00 00 00 47 00 48 ff ff 00 ff 00 ff 00 ff 00 47 00 00 00 53 00 47 00 46 47 47 ff 00 49 ff 00 00 ff 00 ff ff 00 ff ff 00 ff 00 47 ff ff 00 47 ff 00 ff 00 00 ff 00 46 00 ff ff ff 00 47 ff 00 ff 00 47 ff 00 ff 00 44
*/
