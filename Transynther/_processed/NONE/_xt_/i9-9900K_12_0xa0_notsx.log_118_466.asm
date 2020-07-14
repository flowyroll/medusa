.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xdd6a, %rsi
lea addresses_WT_ht+0x11fa, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov $28, %rcx
rep movsw
nop
nop
nop
nop
lfence
lea addresses_D_ht+0x774a, %r11
nop
nop
nop
nop
add $34800, %rcx
movl $0x61626364, (%r11)
nop
nop
nop
nop
sub $63980, %rsi
lea addresses_D_ht+0x14c6a, %rbx
nop
nop
nop
nop
dec %r11
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
add $51078, %r11
lea addresses_WC_ht+0xad6a, %rsi
lea addresses_WT_ht+0x1d788, %rdi
nop
nop
and $37129, %r11
mov $72, %rcx
rep movsl
nop
nop
nop
nop
nop
and $50779, %r11
lea addresses_A_ht+0x1836a, %r11
nop
nop
nop
nop
add $51686, %rax
movw $0x6162, (%r11)
dec %rcx
lea addresses_WT_ht+0x480a, %r8
nop
and %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r8)
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rbx
push %rcx

// Load
mov $0xd0905000000088a, %rcx
nop
xor %r12, %r12
mov (%rcx), %r10
nop
nop
nop
sub $29453, %r12

// Store
lea addresses_A+0x416a, %r11
nop
nop
xor $33443, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r11)
nop
nop
dec %r14

// Store
lea addresses_WT+0x18fa, %rcx
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rcx)
nop
add %rbx, %rbx

// Load
lea addresses_WT+0x1078a, %rcx
nop
nop
nop
add %r11, %r11
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_D+0xe96a, %r11
nop
and %r14, %r14
mov (%r11), %cx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'36': 118}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
