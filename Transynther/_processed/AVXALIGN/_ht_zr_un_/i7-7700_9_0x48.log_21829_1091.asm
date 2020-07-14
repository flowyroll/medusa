.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x42d, %rsi
lea addresses_A_ht+0x144fd, %rdi
nop
nop
nop
nop
nop
and %r11, %r11
mov $97, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x1a7fd, %r15
and %rdx, %rdx
movl $0x61626364, (%r15)
sub %r11, %r11
lea addresses_WC_ht+0x15fd, %rdi
nop
add %rcx, %rcx
mov (%rdi), %dx
nop
add $51746, %r15
lea addresses_D_ht+0xd5fd, %r11
clflush (%r11)
nop
nop
nop
nop
nop
dec %r10
mov (%r11), %rdx
nop
cmp %r11, %r11
lea addresses_A_ht+0x1b5fd, %rsi
lea addresses_A_ht+0xe5fd, %rdi
nop
nop
cmp $46926, %r11
mov $119, %rcx
rep movsq
nop
nop
add $11884, %rsi
lea addresses_D_ht+0xedfd, %rsi
lea addresses_A_ht+0x116ab, %rdi
clflush (%rsi)
nop
nop
nop
xor $53686, %rax
mov $104, %rcx
rep movsl
add %rdi, %rdi
lea addresses_A_ht+0xbf6d, %rsi
lea addresses_WT_ht+0x1b5e9, %rdi
clflush (%rdi)
nop
nop
and %r11, %r11
mov $70, %rcx
rep movsq
nop
nop
nop
nop
nop
lfence
lea addresses_A_ht+0x767d, %rsi
dec %rdi
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
nop
nop
add %r11, %r11
lea addresses_A_ht+0x1d5fd, %rdi
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
cmp $30544, %rsi
lea addresses_D_ht+0x1df1a, %rdx
clflush (%rdx)
nop
and %rax, %rax
movb (%rdx), %r11b
nop
nop
nop
nop
xor $34419, %rdi
lea addresses_UC_ht+0xe67d, %rsi
lea addresses_WT_ht+0x1ec3d, %rdi
nop
sub $51139, %rdx
mov $27, %rcx
rep movsl
nop
nop
nop
add $48023, %rax
lea addresses_normal_ht+0x797d, %rsi
lea addresses_WC_ht+0x16dfd, %rdi
clflush (%rdi)
nop
nop
cmp $25171, %rdx
mov $11, %rcx
rep movsl
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x175fd, %rdx
nop
cmp %r10, %r10
movb $0x61, (%rdx)
nop
nop
nop
cmp $14415, %rdx
lea addresses_normal_ht+0x1d7fd, %r10
dec %rsi
movb $0x61, (%r10)
nop
nop
sub $23479, %rsi
lea addresses_normal_ht+0x1983d, %rsi
lea addresses_WC_ht+0x78bd, %rdi
add $12059, %r15
mov $123, %rcx
rep movsq
nop
nop
nop
and %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rcx

// Store
lea addresses_WC+0x148fd, %r9
nop
xor $10055, %r15
mov $0x5152535455565758, %rbx
movq %rbx, (%r9)
add %r9, %r9

// Store
lea addresses_US+0x77f9, %r12
clflush (%r12)
inc %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%r12)
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_WT+0x156fd, %r12
nop
nop
nop
nop
nop
xor %r13, %r13
movl $0x51525354, (%r12)
xor $58455, %rcx

// Store
lea addresses_normal+0x165fd, %rbp
nop
nop
and $5848, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rbp)
nop
inc %rbp

// Store
lea addresses_WC+0x22fd, %r9
nop
nop
nop
nop
nop
sub $62595, %r12
movl $0x51525354, (%r9)
nop
nop
nop
xor %r9, %r9

// Load
lea addresses_US+0x9c7d, %r13
nop
nop
sub $25572, %rbp
movb (%r13), %r15b
nop
nop
nop
and $46305, %rbp

// Faulty Load
lea addresses_WT+0x2dfd, %r9
add $46846, %rcx
mov (%r9), %r12
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'08': 7840, '47': 36, 'ff': 49, '45': 1837, '00': 597, '44': 32, '09': 3737, '07': 7645, '46': 56}
45 07 07 45 07 00 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 45 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 07 07 07 07 07 07 07 07 07 07 07 46 07 07 07 07 07 07 07 07 07 45 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 45 07 00 07 07 45 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 45 07 07 07 07 07 07 07 45 07 07 07 07 45 00 07 07 07 00 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 07 00 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 45 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 00 07 07 07 07 07 00 07 07 07 07 45 07 07 07 07 07 07 07 47 45 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 07 ff 07 07 07 07 07 07 07 07 07 07 07 00 07 07 07 07 45 07 07 07 07 07 45 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 45 07 07 00 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 07 07 07 07 07 07 ff 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 07 00 00 07 07 07 00 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 07 07 07 07 07 07 07 07 07 44 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 45 45 07 07 07 07 07 07 07 07 07 07 07 46 07 07 07 07 07 07 45 07 07 45 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 45 07 07 07 45 07 00 07 07 07 07 07 45 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 45 07 07 07 45 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 45 07 07 00 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 00 07 07 07 07 07 07 45 45 07 07 07 07 07 07 07 07 07 07 45 45 07 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 00 07 07 07 07 07 07 07 45 07 07 07 07 07 00 00 07 07 07 07 07 07 45 07 07 07 07 07 07 07 00 07 45 07 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 00 44 45 07 45 07 07 07 07 07 45 07 07 07 07 00 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 45 07 45 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 00 07 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 07 07 07 07 00 07 07 45 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 45 07 07 07 00 00 07 07 07 45 07 07 00 07 45 07 07 07 45 07 07 07 07
*/
