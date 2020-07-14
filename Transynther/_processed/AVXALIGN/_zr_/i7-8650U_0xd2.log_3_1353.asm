.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1a921, %rsi
lea addresses_WC_ht+0x4821, %rdi
inc %r13
mov $50, %rcx
rep movsq
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x12d21, %r15
nop
xor $45567, %r12
mov (%r15), %rdx
sub %rdi, %rdi
lea addresses_normal_ht+0x175c1, %r13
nop
nop
nop
nop
nop
dec %rsi
mov (%r13), %rcx
nop
nop
nop
nop
sub $56030, %rdx
lea addresses_D_ht+0x1a721, %rdx
clflush (%rdx)
nop
nop
nop
cmp $47182, %rcx
vmovups (%rdx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
cmp %r15, %r15
lea addresses_WT_ht+0x8a21, %r15
nop
nop
nop
nop
add $36363, %r13
mov $0x6162636465666768, %rdx
movq %rdx, (%r15)
nop
and %rdx, %rdx
lea addresses_normal_ht+0x12521, %rsi
lea addresses_WT_ht+0xd771, %rdi
clflush (%rsi)
add %r8, %r8
mov $72, %rcx
rep movsw
nop
nop
nop
xor $23338, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rbx

// Store
lea addresses_UC+0x1bd21, %rbx
clflush (%rbx)
nop
sub %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, (%rbx)
nop
nop
dec %rbx

// Load
lea addresses_normal+0x1a021, %r12
clflush (%r12)
nop
nop
nop
nop
and %r11, %r11
vmovups (%r12), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r10
nop
add %r10, %r10

// Store
lea addresses_RW+0x36e1, %r11
and $56456, %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%r11)
nop
xor $5246, %r13

// Store
mov $0x6f72290000000521, %r13
nop
nop
nop
xor $7248, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_WC+0x16d0b, %rbp
nop
nop
nop
nop
add $62244, %r10
movl $0x51525354, (%rbp)
nop
nop
cmp %r8, %r8

// Store
lea addresses_PSE+0x1b697, %r8
inc %r13
movb $0x51, (%r8)
nop
nop
add $18347, %rbx

// Store
lea addresses_PSE+0x12421, %r12
nop
nop
nop
and $56233, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_normal+0x15521, %r12
nop
nop
nop
nop
and %rbp, %rbp
movntdqa (%r12), %xmm7
vpextrq $0, %xmm7, %r11
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'00': 3}
00 00 00
*/
