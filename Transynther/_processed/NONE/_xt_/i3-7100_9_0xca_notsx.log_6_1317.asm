.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x61bb, %r8
nop
nop
nop
nop
nop
and $14217, %r11
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
nop
add $61697, %rdx
lea addresses_WC_ht+0x16c3b, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
movb $0x61, (%rdi)
nop
nop
nop
nop
cmp $42218, %r11
lea addresses_D_ht+0x19ca3, %rsi
lea addresses_UC_ht+0xcdbb, %rdi
clflush (%rdi)
nop
nop
nop
and $2863, %r11
mov $13, %rcx
rep movsq
nop
nop
nop
nop
nop
and $15255, %rdx
lea addresses_WT_ht+0x185d3, %r8
nop
nop
nop
nop
nop
and %r9, %r9
and $0xffffffffffffffc0, %r8
movaps (%r8), %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
nop
nop
xor $31140, %r11
lea addresses_WT_ht+0x19fb, %r12
nop
nop
nop
nop
and $52138, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r12)
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0xc03b, %rsi
nop
nop
nop
nop
sub %r9, %r9
movb (%rsi), %r8b
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x45bb, %rsi
lea addresses_PSE+0x4617, %rdi
clflush (%rsi)
nop
nop
nop
cmp %r8, %r8
mov $28, %rcx
rep movsw
nop
nop
and %r8, %r8

// Store
lea addresses_D+0x1d27b, %rax
nop
nop
nop
nop
xor $61651, %r9
movb $0x51, (%rax)
nop
dec %rsi

// Store
lea addresses_WT+0x130bb, %r9
nop
nop
dec %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
nop
nop
sub %rax, %rax

// Store
lea addresses_WC+0x556b, %rsi
nop
nop
and %rcx, %rcx
movb $0x51, (%rsi)
nop
cmp %r9, %r9

// Load
lea addresses_normal+0x307b, %rcx
sub $1292, %rbp
mov (%rcx), %rax
sub %rcx, %rcx

// Store
mov $0x418ae00000007bb, %rax
nop
nop
nop
add %rsi, %rsi
movb $0x51, (%rax)
nop
cmp $4177, %rsi

// Store
lea addresses_WT+0x141bb, %rcx
nop
nop
nop
nop
sub $11716, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movntdq %xmm3, (%rcx)
nop
nop
nop
nop
nop
cmp $19828, %r8

// REPMOV
lea addresses_normal+0x3fad, %rsi
lea addresses_normal+0x81bb, %rdi
xor %r14, %r14
mov $31, %rcx
rep movsw
sub $21682, %r8

// Faulty Load
lea addresses_PSE+0x149bb, %rbp
nop
nop
nop
nop
dec %r14
mov (%rbp), %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_normal', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 9, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 6}
33 33 33 33 33 33
*/
