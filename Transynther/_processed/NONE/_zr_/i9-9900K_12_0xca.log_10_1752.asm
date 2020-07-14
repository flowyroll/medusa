.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rdi
push %rdx
lea addresses_WC_ht+0x12220, %r11
nop
nop
nop
cmp $64728, %r9
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0x119be, %r9
clflush (%r9)
nop
add $54596, %r10
mov (%r9), %dx
nop
nop
nop
nop
add $48285, %r9
pop %rdx
pop %rdi
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rcx
push %rdx
push %rsi

// Store
lea addresses_UC+0x426, %rsi
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%rsi)
xor %r12, %r12

// Load
lea addresses_PSE+0x123fe, %rcx
nop
nop
nop
xor %r11, %r11
vmovntdqa (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdx
nop
nop
inc %rdx

// Store
lea addresses_PSE+0x191fe, %rcx
nop
inc %r11
movl $0x51525354, (%rcx)
nop
xor %r12, %r12

// Store
lea addresses_WT+0x173fe, %rcx
nop
nop
nop
cmp $55172, %r10
movw $0x5152, (%rcx)
and $56053, %r11

// Load
lea addresses_PSE+0xcfe, %rdx
nop
nop
nop
nop
nop
cmp $62829, %r15
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
inc %rsi

// Store
lea addresses_WC+0x1f92e, %r12
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, (%r12)
nop
nop
nop
nop
nop
inc %rcx

// Faulty Load
lea addresses_WT+0x173fe, %r15
nop
nop
nop
and %rsi, %rsi
vmovups (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
