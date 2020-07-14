.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x13aae, %r12
nop
nop
nop
add %rax, %rax
movb (%r12), %r10b
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0xc11e, %r15
lfence
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r15)
nop
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x1ad9e, %r11
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r11)
nop
inc %r11
lea addresses_WT_ht+0x1591e, %r11
clflush (%r11)
nop
sub %r12, %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%r11)
cmp %rsi, %rsi
lea addresses_WC_ht+0x7026, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor $15201, %r14
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_WC_ht+0x1e1e, %r12
nop
nop
nop
nop
sub $34665, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
nop
nop
and $434, %r15
lea addresses_normal_ht+0x1289e, %rsi
clflush (%rsi)
xor $42368, %rax
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r11
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_normal_ht+0x9e0e, %rsi
lea addresses_WT_ht+0xa9e, %rdi
nop
inc %r10
mov $42, %rcx
rep movsb
nop
nop
nop
nop
sub $62553, %r11
lea addresses_WT_ht+0x1041e, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub %r15, %r15
and $0xffffffffffffffc0, %r10
movntdqa (%r10), %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x91e, %r12
nop
inc %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
xor $55404, %r11
lea addresses_WC_ht+0x221e, %rdi
nop
xor %r14, %r14
movl $0x61626364, (%rdi)
xor $15199, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x17e1e, %r12
nop
cmp %rcx, %rcx
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
sub $10957, %r8

// Store
lea addresses_US+0x17b6e, %rsi
cmp $4201, %rdi
mov $0x5152535455565758, %r13
movq %r13, (%rsi)
nop
xor %r12, %r12

// Load
mov $0x17ab22000000088e, %r8
inc %rdx
vmovups (%r8), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
nop
nop
nop
sub %r12, %r12

// Load
lea addresses_PSE+0x166bc, %rdi
nop
nop
nop
dec %r12
mov (%rdi), %ecx
nop
nop
add $19803, %r13

// Store
lea addresses_RW+0x17b5e, %rdi
nop
nop
nop
cmp $55712, %r12
movl $0x51525354, (%rdi)
cmp $61787, %r12

// Store
lea addresses_RW+0x1f19e, %rcx
nop
nop
nop
nop
and $44397, %r12
movb $0x51, (%rcx)
nop
nop
sub %r13, %r13

// Store
lea addresses_normal+0x1621e, %rsi
nop
nop
dec %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
cmp $56277, %rdx

// Faulty Load
lea addresses_D+0x1e61e, %rdx
sub %r12, %r12
mov (%rdx), %r8w
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
