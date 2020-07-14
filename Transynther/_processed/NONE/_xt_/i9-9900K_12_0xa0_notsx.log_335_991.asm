.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x15593, %r11
xor %rdx, %rdx
mov (%r11), %rdi
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_A_ht+0x17053, %rsi
lea addresses_WT_ht+0x16853, %rdi
clflush (%rsi)
xor %r15, %r15
mov $99, %rcx
rep movsb
nop
nop
nop
nop
add %r14, %r14
lea addresses_D_ht+0xc3d9, %rdx
nop
dec %r14
mov (%rdx), %si
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x1d7be, %rcx
nop
nop
nop
nop
and $35852, %rdi
movl $0x61626364, (%rcx)
nop
xor %r11, %r11
lea addresses_normal_ht+0x1ede3, %rsi
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
cmp $42748, %rdi
lea addresses_WC_ht+0x11ebb, %r14
clflush (%r14)
nop
nop
nop
nop
nop
add %r11, %r11
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
dec %r11
lea addresses_D_ht+0x17453, %rsi
lea addresses_A_ht+0x16153, %rdi
nop
nop
nop
nop
cmp $52569, %rdx
mov $96, %rcx
rep movsw
add %r14, %r14
lea addresses_WT_ht+0x6853, %rsi
lea addresses_normal_ht+0x123b3, %rdi
nop
xor $46836, %r14
mov $18, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $2583, %rdi
lea addresses_UC_ht+0xf453, %rsi
nop
sub $41891, %r15
mov (%rsi), %rdx
dec %rdx
lea addresses_WT_ht+0x14093, %rdi
nop
nop
nop
nop
cmp $30339, %rdx
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x17613, %rcx
cmp %r14, %r14
movl $0x61626364, (%rcx)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x13133, %rcx
nop
lfence
mov (%rcx), %rdx
cmp %r15, %r15
lea addresses_A_ht+0x16aeb, %r15
add %rcx, %rcx
movw $0x6162, (%r15)
xor $47741, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
mov $0x91f8e0000000a53, %rcx
nop
nop
nop
add $22718, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%rcx)

// Exception!!!
nop
nop
nop
nop
mov (0), %rdi
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_D+0x18253, %r15
nop
add $59265, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r15)
nop
sub %rbp, %rbp

// Store
lea addresses_WC+0x9c0c, %rdi
nop
cmp $36311, %rcx
movl $0x51525354, (%rdi)
nop
cmp $9927, %rcx

// Faulty Load
lea addresses_PSE+0x2c53, %rbp
nop
nop
nop
add $27131, %r10
mov (%rbp), %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'33': 335}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
