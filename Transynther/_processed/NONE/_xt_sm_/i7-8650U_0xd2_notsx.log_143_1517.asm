.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbp
push %rbx
push %rdx
push %rsi
lea addresses_WT_ht+0xef14, %r11
nop
nop
nop
cmp $19441, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0xc6d4, %rbx
clflush (%rbx)
nop
nop
nop
xor %r14, %r14
mov (%rbx), %r8
nop
nop
nop
nop
nop
and $4881, %r14
lea addresses_A_ht+0xa894, %rdx
nop
nop
nop
nop
nop
and %rbp, %rbp
mov (%rdx), %r11d
xor $59364, %rsi
lea addresses_D_ht+0x1d324, %r11
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
add $25692, %r8
lea addresses_D_ht+0xf094, %r11
nop
nop
nop
nop
nop
xor $23876, %r8
vmovups (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0x183ac, %rbp
nop
nop
and $57858, %rsi
movb (%rbp), %r8b
xor %rbx, %rbx
lea addresses_WT_ht+0x3a14, %r11
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
nop
nop
add $12109, %rdx
lea addresses_WC_ht+0x1dda6, %r14
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r14)
nop
nop
sub $34001, %r11
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x1ec94, %r10
nop
nop
nop
nop
nop
add $45772, %r8
movw $0x5152, (%r10)
nop
nop
nop
and $49946, %rsi

// Store
lea addresses_D+0xec94, %r8
nop
nop
nop
nop
add $3231, %rax
movw $0x5152, (%r8)
nop
nop
nop
xor $35630, %rdi

// Store
lea addresses_PSE+0x7a94, %r10
nop
xor $25798, %r8
movl $0x51525354, (%r10)
nop
nop
nop
add %r8, %r8

// Faulty Load
lea addresses_A+0x1ec94, %r10
inc %r12
movb (%r10), %cl
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'52': 143}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
