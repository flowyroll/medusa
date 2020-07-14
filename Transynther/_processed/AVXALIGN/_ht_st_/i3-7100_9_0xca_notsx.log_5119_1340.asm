.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x90d7, %r11
nop
nop
nop
nop
nop
and $38345, %rsi
movl $0x61626364, (%r11)
nop
nop
and $5493, %r11
lea addresses_A_ht+0x1ccc1, %rsi
nop
nop
nop
nop
inc %r8
movl $0x61626364, (%rsi)
nop
and $58943, %rdx
lea addresses_UC_ht+0x1ef4e, %r13
nop
nop
cmp $38816, %r12
movl $0x61626364, (%r13)
nop
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x1907, %rdx
mfence
movw $0x6162, (%rdx)
nop
nop
sub $45381, %r13
lea addresses_A_ht+0x15753, %r8
sub $55919, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %r8
movntdq %xmm4, (%r8)
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x7c8b, %r8
nop
nop
nop
dec %rdx
movb (%r8), %r12b
nop
dec %r13
lea addresses_WC_ht+0x1b847, %r13
nop
add $7861, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%r13)
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0x1ba07, %rsi
lea addresses_D_ht+0x19e07, %rdi
nop
nop
nop
nop
nop
add $3077, %r12
mov $53, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $43716, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x4887, %rbp
nop
nop
nop
and $50563, %r14
movb $0x51, (%rbp)
nop
nop
nop
nop
xor $61629, %rdx

// REPMOV
lea addresses_normal+0x19107, %rsi
lea addresses_PSE+0x191d4, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $34, %rcx
rep movsw
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_US+0x18947, %r8
clflush (%r8)
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
nop
nop
add %rbp, %rbp

// Store
mov $0x5949cb0000000507, %rdi
inc %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movntdq %xmm5, (%rdi)
nop
nop
nop
cmp $5216, %r13

// Store
lea addresses_D+0x11a07, %r14
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x51, (%r14)
nop
nop
dec %rsi

// Store
lea addresses_A+0x1eb07, %r13
nop
nop
xor %rcx, %rcx
movb $0x51, (%r13)
nop
cmp %rcx, %rcx

// Store
lea addresses_D+0xa607, %rsi
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
sub $6064, %r8

// Store
lea addresses_A+0x1d07, %r14
nop
nop
nop
sub $18619, %r13
movw $0x5152, (%r14)
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_normal+0x19107, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
xor %r14, %r14
vmovaps (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'45': 184, '34': 4935}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 45 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 45 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 45 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 45 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 45 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 45 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 45 34 34 34 34 34 34 34 34 34 34 45 34 34 34 45 34 34 34 34 34 34 34 34 45 45 45 34 34 34 34 34 34 34 34 34 34 34 34 45 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 45 34 34 34 34 45 34 34 34 34 34 34 34 34 34 45 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 45 34 34 34 34 34 34 34 34 34 45 34 34 34 34 34 34 34 34 34 45 34 34 34 34 45 45 45 34 45 34 34 34 34 34 34 34 34 34 45 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 45 34 34 34 34 45 34 34 34 34 34 34 34 34 34 45 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
