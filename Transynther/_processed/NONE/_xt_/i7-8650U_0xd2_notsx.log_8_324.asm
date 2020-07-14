.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xdd2b, %rbp
nop
sub $32729, %r11
movb $0x61, (%rbp)
nop
and $38991, %r14
lea addresses_D_ht+0x13d25, %rbp
sub %r10, %r10
movb (%rbp), %r14b
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x10465, %r8
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %r14
movq %r14, (%r8)
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x10b1b, %rsi
lea addresses_A_ht+0xc741, %rdi
nop
nop
nop
nop
nop
and $59583, %rbp
mov $52, %rcx
rep movsl
nop
nop
nop
and $7565, %r10
lea addresses_normal_ht+0x19ee9, %r8
nop
nop
nop
nop
and $42444, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, (%r8)
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xf525, %rsi
lea addresses_UC_ht+0x5ba5, %rdi
clflush (%rdi)
nop
nop
nop
dec %r13
mov $11, %rcx
rep movsb
and $12622, %r11
lea addresses_WT_ht+0xad25, %rdx
nop
nop
nop
nop
nop
and $14414, %r10
vmovups (%rdx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
and $4191, %rdx
lea addresses_D_ht+0x14509, %rsi
lea addresses_A_ht+0x19705, %rdi
nop
add $53327, %r13
mov $54, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rdx

// Store
lea addresses_RW+0x70cb, %r10
nop
nop
nop
nop
nop
and $20636, %rdx
movl $0x51525354, (%r10)
nop
nop
add $36883, %rdx

// Store
lea addresses_A+0x1e455, %rdx
nop
nop
nop
nop
nop
sub %r9, %r9
movb $0x51, (%rdx)
nop
sub $32606, %rdx

// Store
lea addresses_A+0x1f825, %rbp
nop
nop
nop
nop
nop
and $62705, %r15
movw $0x5152, (%rbp)
nop
nop
nop
nop
add $39441, %rbp

// Load
mov $0x87d, %r10
nop
nop
nop
and %rbp, %rbp
vmovups (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
and $42703, %r9

// Store
lea addresses_RW+0x13d25, %rbx
nop
nop
nop
and %rbp, %rbp
movw $0x5152, (%rbx)
nop
nop
nop
nop
sub %r9, %r9

// Load
lea addresses_UC+0x11925, %r9
nop
nop
add $43853, %rbp
movb (%r9), %bl
nop
nop
nop
nop
xor $63875, %rbp

// Store
lea addresses_normal+0xee5, %rdx
and $51766, %r9
movl $0x51525354, (%rdx)
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_D+0x2925, %r8
and %rdx, %rdx
movw $0x5152, (%r8)

// Exception!!!
nop
nop
mov (0), %r15
inc %rbp

// Faulty Load
lea addresses_D+0x5525, %r10
nop
nop
nop
nop
dec %rbx
mov (%r10), %r9
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'36': 8}
36 36 36 36 36 36 36 36
*/
