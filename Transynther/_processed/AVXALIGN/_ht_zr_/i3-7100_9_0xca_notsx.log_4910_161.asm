.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x29f9, %rsi
lea addresses_UC_ht+0x17ca1, %rdi
nop
nop
nop
nop
nop
sub $60937, %r9
mov $71, %rcx
rep movsb
xor $59088, %rax
lea addresses_normal_ht+0x11b6f, %rsi
lea addresses_WT_ht+0xb29d, %rdi
add $65184, %r11
mov $24, %rcx
rep movsl
nop
add $31693, %rsi
lea addresses_normal_ht+0x4577, %rcx
clflush (%rcx)
nop
sub $28839, %r15
movb (%rcx), %al
nop
xor $5698, %rcx
lea addresses_WC_ht+0x9f9, %rsi
lea addresses_A_ht+0x10f1, %rdi
nop
nop
nop
add %r13, %r13
mov $71, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r15
lea addresses_WC_ht+0x10cd4, %rsi
lea addresses_normal_ht+0x19cf9, %rdi
nop
nop
sub %r15, %r15
mov $13, %rcx
rep movsb
nop
sub %r9, %r9
lea addresses_WT_ht+0x9bf9, %rax
nop
and $16243, %rcx
mov (%rax), %r13
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x4519, %r13
nop
nop
nop
nop
xor %r15, %r15
movl $0x61626364, (%r13)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x1b0a9, %rcx
nop
nop
nop
add $6850, %r9
movl $0x61626364, (%rcx)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x2a39, %rsi
lea addresses_normal_ht+0x1def9, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %r9, %r9
mov $120, %rcx
rep movsw
nop
xor $29963, %r13
lea addresses_WC_ht+0xb179, %rsi
lea addresses_A_ht+0x9ee1, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $126, %rcx
rep movsw
add $64788, %rdi
lea addresses_WC_ht+0x2bf9, %r13
and $12827, %r9
mov (%r13), %rcx
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x28f9, %r11
clflush (%r11)
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rax
movq %rax, (%r11)
nop
sub $48016, %r15
lea addresses_D_ht+0x11471, %rsi
lea addresses_WT_ht+0x65b9, %rdi
clflush (%rsi)
nop
nop
xor $64443, %r13
mov $0, %rcx
rep movsl
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rcx

// Store
lea addresses_D+0xa7d7, %rbp
and %r13, %r13
movl $0x51525354, (%rbp)
nop
nop
nop
add %rbp, %rbp

// Load
lea addresses_D+0x4af7, %r8
nop
cmp %rbx, %rbx
movb (%r8), %r13b
nop
nop
nop
nop
sub %rbx, %rbx

// Load
lea addresses_A+0x11309, %rcx
nop
nop
nop
nop
nop
xor $39619, %rbx
vmovaps (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
nop
xor $56073, %rbp

// Faulty Load
lea addresses_WC+0x1a3f9, %r13
nop
sub %r9, %r9
movntdqa (%r13), %xmm1
vpextrq $1, %xmm1, %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'same': True, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'45': 6, '44': 2904, '00': 1093, '48': 907}
48 00 44 00 00 44 44 48 44 48 48 48 44 44 44 44 44 44 44 48 44 00 44 44 48 44 44 44 48 44 44 44 44 44 48 44 48 44 44 44 44 44 44 48 44 44 48 44 48 44 44 48 48 44 44 44 44 44 48 00 44 00 48 44 48 44 44 44 00 00 00 00 00 48 44 00 44 00 44 00 00 00 44 48 44 44 44 48 44 44 48 44 44 44 48 44 44 44 44 44 00 44 44 48 44 00 00 00 44 44 44 48 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 00 44 44 44 48 00 48 44 00 44 44 44 44 48 00 44 44 44 00 00 48 44 48 00 44 00 44 44 00 44 44 44 44 44 00 48 44 00 48 44 44 44 48 00 44 48 44 44 48 44 44 48 44 00 44 44 48 44 44 44 44 44 48 44 48 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 48 44 00 44 48 00 44 44 44 44 44 00 48 44 44 44 48 00 00 48 44 44 44 00 44 44 00 00 44 44 00 44 00 44 48 00 44 48 44 44 48 44 48 44 44 44 00 44 44 44 44 00 44 44 44 00 00 48 44 00 00 00 44 00 00 44 44 48 44 44 44 44 48 00 48 44 44 44 44 48 48 44 00 44 44 00 44 00 44 48 44 48 44 48 44 44 00 44 44 48 44 44 44 48 44 44 00 48 00 44 44 48 44 48 44 44 44 00 44 44 44 48 00 44 48 44 44 44 48 48 44 00 44 44 44 48 44 48 48 00 48 48 48 44 44 44 44 00 44 44 44 44 48 00 44 48 00 00 48 00 44 00 44 44 44 44 00 44 00 00 44 48 48 44 44 44 44 48 44 00 44 00 48 44 44 48 00 44 44 48 00 00 48 44 00 44 44 00 00 44 44 44 44 44 00 44 44 48 44 44 00 44 44 44 44 00 44 44 44 44 44 44 48 44 00 44 44 00 44 48 44 44 00 44 44 48 44 44 44 48 00 00 48 44 44 48 44 44 00 48 44 00 00 00 48 44 00 44 44 00 44 44 44 00 44 44 44 00 44 44 44 44 48 44 44 44 44 48 44 48 44 00 44 44 00 48 00 00 44 48 44 48 44 44 44 44 00 00 44 44 00 48 44 48 00 48 44 00 44 00 00 48 00 44 44 00 00 44 00 00 48 00 44 44 44 00 44 48 44 00 00 44 00 00 44 00 00 00 44 48 00 00 48 00 00 00 00 44 44 00 00 48 00 00 00 48 44 00 44 00 00 44 00 44 00 44 44 00 00 00 44 48 00 00 44 00 00 44 00 00 44 00 44 48 48 44 44 44 00 44 44 44 48 44 44 44 48 44 44 44 00 44 44 48 00 44 44 48 44 00 44 44 48 44 00 44 44 44 44 44 44 00 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 48 44 44 00 48 44 44 44 44 48 00 44 48 48 44 44 48 44 48 44 00 44 44 48 00 44 00 00 00 44 00 44 00 44 48 44 48 44 00 48 00 44 44 00 48 44 48 00 44 44 44 00 00 00 44 00 00 44 00 00 44 48 44 48 48 44 48 00 48 44 48 44 00 00 00 44 44 48 44 44 48 44 44 44 44 44 44 44 48 44 00 00 48 00 00 44 44 00 44 44 48 00 44 44 00 44 44 44 00 44 44 48 44 44 44 48 44 44 44 44 44 44 44 44 00 44 48 44 44 48 44 44 44 48 00 44 44 44 48 00 44 00 44 00 48 00 00 48 00 44 44 44 44 44 00 44 44 44 44 48 44 44 44 48 44 44 44 44 44 44 48 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 48 44 44 44 44 44 44 48 48 44 44 44 48 00 44 48 44 44 00 48 48 48 44 44 00 00 44 44 48 44 44 00 44 44 44 44 44 48 44 00 48 00 48 00 44 44 45 44 48 44 00 00 44 44 00 44 00 44 44 00 00 48 48 44 44 44 44 44 44 44 44 44 00 44 44 44 44 48 44 44 44 48 48 44 48 44 00 44 00 44 44 00 44 00 44 44 44 44 00 44 44 44 48 00 44 48 00 44 00 00 44 48 48 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 48 48 44 44 00 44 44 00 48 00 00 48 48 48 00 44 44 44 44 48 44 44 44 00 44 44 44 44 48 00 44
*/
