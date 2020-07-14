.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdx
lea addresses_A_ht+0x972, %r15
nop
nop
nop
nop
nop
sub %r8, %r8
vmovups (%r15), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
nop
dec %rdx
lea addresses_D_ht+0x10699, %rcx
nop
nop
nop
nop
nop
inc %r13
mov (%rcx), %r11d
nop
nop
xor $35582, %r11
lea addresses_UC_ht+0x1b6b2, %rcx
nop
nop
nop
nop
and %rbx, %rbx
movw $0x6162, (%rcx)
dec %rcx
lea addresses_WT_ht+0x3272, %r11
nop
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r11)
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x16ef2, %rbx
nop
nop
nop
nop
nop
sub $57659, %r13
mov (%rbx), %cx
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x1b70b, %rcx
and $38792, %r13
movb $0x61, (%rcx)
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0x10e72, %rcx
cmp %r11, %r11
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
add $53663, %r13
lea addresses_D_ht+0x1a67a, %r11
nop
nop
nop
cmp $44378, %r8
movl $0x61626364, (%r11)
nop
nop
dec %r15
lea addresses_A_ht+0x73d2, %r15
nop
nop
cmp $19012, %r11
mov (%r15), %rcx
xor %rbx, %rbx
lea addresses_D_ht+0x197c2, %r8
add %r15, %r15
mov (%r8), %r11d
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x55f2, %r15
add %rbx, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, (%r15)
xor $24227, %r11
lea addresses_WC_ht+0x9ec2, %r13
nop
nop
cmp $38007, %rcx
mov $0x6162636465666768, %r15
movq %r15, (%r13)
nop
nop
add $64456, %rbx
lea addresses_WT_ht+0x15972, %r15
nop
cmp %r8, %r8
movb $0x61, (%r15)
nop
nop
nop
nop
nop
dec %rbx
lea addresses_D_ht+0x17972, %rdx
nop
nop
nop
sub $47531, %r15
vmovups (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r11
nop
and $11923, %r13
lea addresses_normal_ht+0x3adb, %r11
nop
nop
nop
nop
nop
dec %r15
movb (%r11), %cl
nop
nop
add $41804, %r8
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rsi

// Store
lea addresses_UC+0x19e72, %r8
clflush (%r8)
nop
add %rbx, %rbx
movb $0x51, (%r8)
sub $19483, %r10

// Store
mov $0x381caa0000000192, %r10
nop
sub $51155, %r15
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
add $20247, %r10

// Store
mov $0xcda, %rbp
nop
nop
nop
nop
and $35329, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rbp)
nop
add %r15, %r15

// Faulty Load
lea addresses_A+0x16972, %r10
nop
nop
and $9628, %rbp
mov (%r10), %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 2}
00 00
*/
