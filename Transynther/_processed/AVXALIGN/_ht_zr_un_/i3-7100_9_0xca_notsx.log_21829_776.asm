.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x8dfc, %rsi
lea addresses_UC_ht+0x7ba4, %rdi
sub %r15, %r15
mov $48, %rcx
rep movsl
nop
nop
nop
xor $40654, %rdx
lea addresses_A_ht+0xf7e8, %rax
nop
xor %rcx, %rcx
movw $0x6162, (%rax)
and $49608, %rax
lea addresses_WT_ht+0x1065c, %rdx
nop
nop
nop
nop
nop
inc %rax
movw $0x6162, (%rdx)
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x1dfc, %rsi
nop
mfence
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
nop
nop
nop
add $58946, %rsi
lea addresses_A_ht+0x177fc, %rdx
nop
nop
xor $23013, %r15
mov $0x6162636465666768, %r12
movq %r12, (%rdx)
nop
nop
inc %r12
lea addresses_WC_ht+0x16edc, %rdx
nop
nop
nop
nop
nop
xor %r12, %r12
mov (%rdx), %eax
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WT+0x1fc, %rdx
nop
nop
nop
nop
nop
sub %r8, %r8
movw $0x5152, (%rdx)
nop
nop
cmp $21109, %r8

// Store
mov $0x5fc, %r9
nop
nop
nop
and $27537, %rbp
mov $0x5152535455565758, %r15
movq %r15, (%r9)
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_D+0xbe3c, %r9
clflush (%r9)
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%r9)
cmp $51675, %rbp

// Load
lea addresses_D+0x1cd3c, %rdx
nop
nop
nop
nop
nop
add %rsi, %rsi
mov (%rdx), %bp
nop
nop
nop
nop
nop
dec %r9

// Store
lea addresses_normal+0x1b89c, %r9
nop
nop
nop
nop
nop
add %rsi, %rsi
movl $0x51525354, (%r9)
nop
nop
xor $717, %rsi

// Store
lea addresses_D+0x1f5fc, %rsi
clflush (%rsi)
sub $54556, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%rsi)
and %r15, %r15

// Load
lea addresses_RW+0xcbc, %rdx
nop
nop
nop
nop
nop
dec %rax
movb (%rdx), %r9b
nop
nop
nop
inc %rsi

// Faulty Load
lea addresses_WT+0x125fc, %r9
nop
nop
nop
cmp %rax, %rax
vmovaps (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 2, 'NT': True, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'1c': 1, '45': 1648, '6c': 1, '00': 20178, 'ff': 1}
00 6c 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 45 00 45 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 45 00 00 00 00 00 00 45 00 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00
*/
