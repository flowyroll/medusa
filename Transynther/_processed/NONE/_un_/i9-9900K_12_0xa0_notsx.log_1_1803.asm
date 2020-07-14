.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x9412, %rax
clflush (%rax)
nop
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm7
vmovups %ymm7, (%rax)
add %r9, %r9
lea addresses_UC_ht+0x18b1a, %rsi
nop
nop
sub %r14, %r14
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x213a, %rsi
lea addresses_normal_ht+0x1daac, %rdi
nop
cmp $48267, %r11
mov $79, %rcx
rep movsl
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0xaeda, %r11
dec %rbp
mov $0x6162636465666768, %r14
movq %r14, (%r11)
nop
nop
nop
nop
nop
sub $22713, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0xd44a, %rcx
nop
nop
nop
nop
mfence
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_WT+0x101a, %rcx
nop
nop
nop
nop
nop
add $4849, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
nop
nop
nop
nop
inc %r14

// Load
mov $0x11c10200000005fa, %rsi
nop
add %rdx, %rdx
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
cmp $31429, %rdx

// Store
lea addresses_WT+0x1d8ea, %rcx
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
nop
nop
nop
and $44478, %r14

// Load
lea addresses_RW+0x1301a, %rdi
nop
nop
nop
nop
nop
cmp $46066, %rsi
vmovups (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
and $46370, %rbp

// Store
lea addresses_normal+0xf41a, %r14
nop
nop
cmp %rbp, %rbp
movb $0x51, (%r14)
nop
nop
nop
xor $10995, %rbp

// Store
lea addresses_WT+0x1bf5c, %rcx
nop
nop
nop
xor %rdi, %rdi
movw $0x5152, (%rcx)

// Exception!!!
nop
nop
nop
mov (0), %rbp
nop
nop
nop
nop
nop
sub $31491, %rbx

// Faulty Load
lea addresses_RW+0x1301a, %rbx
nop
nop
nop
nop
xor %rbp, %rbp
mov (%rbx), %edi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'0d': 1}
0d
*/
