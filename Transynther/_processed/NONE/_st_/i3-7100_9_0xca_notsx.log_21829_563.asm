.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x590e, %rbp
xor $63501, %r13
mov (%rbp), %r11w
nop
and $6766, %rax
lea addresses_normal_ht+0x338a, %rax
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x1210e, %rsi
lea addresses_UC_ht+0xbb4e, %rdi
nop
nop
cmp $56855, %rbp
mov $99, %rcx
rep movsw
nop
and %rdi, %rdi
lea addresses_D_ht+0x79be, %r13
xor $37009, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%r13)
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x5162, %rsi
lea addresses_WT_ht+0x11d96, %rdi
nop
nop
cmp %r9, %r9
mov $105, %rcx
rep movsw
nop
nop
nop
add $44906, %rcx
lea addresses_WT_ht+0x1438e, %rsi
lea addresses_D_ht+0x1bf0e, %rdi
nop
nop
cmp %rbp, %rbp
mov $15, %rcx
rep movsb
xor $22692, %rax
lea addresses_D_ht+0x2a95, %rax
add $24439, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
cmp %r13, %r13
lea addresses_D_ht+0x6366, %r13
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
movups %xmm2, (%r13)
nop
cmp $4587, %rsi
lea addresses_WC_ht+0x16a86, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
inc %rdi
movl $0x61626364, (%rbp)
nop
nop
nop
add $46939, %rax
lea addresses_normal_ht+0x430e, %r9
nop
nop
nop
nop
nop
and $14395, %r13
movups (%r9), %xmm5
vpextrq $1, %xmm5, %r11
nop
nop
nop
xor %rax, %rax
lea addresses_D_ht+0x147ce, %rbp
nop
nop
nop
xor $20514, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rbp)
nop
xor $39658, %rdi
lea addresses_UC_ht+0x11076, %rax
and %rsi, %rsi
movb $0x61, (%rax)
and %rbp, %rbp
lea addresses_A_ht+0x18126, %r13
nop
and $32593, %rbp
mov (%r13), %r11d
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x490e, %rsi
lea addresses_WC_ht+0x15d0e, %rdi
clflush (%rsi)
nop
nop
sub %r13, %r13
mov $49, %rcx
rep movsq
nop
nop
nop
sub $64223, %rdi
lea addresses_D_ht+0x1010e, %rsi
nop
nop
nop
nop
nop
and $18128, %rcx
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_D+0x1dd3e, %r14
nop
nop
nop
and %r8, %r8
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
nop
nop
nop
inc %r14

// REPMOV
lea addresses_WT+0x1857e, %rsi
lea addresses_PSE+0x9bc8, %rdi
nop
sub %r14, %r14
mov $19, %rcx
rep movsb
inc %rbx

// Load
lea addresses_PSE+0x510e, %rdi
nop
nop
nop
dec %r8
mov (%rdi), %rsi
nop
cmp %rbx, %rbx

// REPMOV
lea addresses_D+0x4f8e, %rsi
lea addresses_WT+0x1090e, %rdi
nop
nop
add $48365, %r14
mov $15, %rcx
rep movsb
nop
and %rbx, %rbx

// REPMOV
lea addresses_WC+0xf40e, %rsi
lea addresses_D+0x1f38a, %rdi
nop
nop
sub %r8, %r8
mov $95, %rcx
rep movsq
nop
nop
nop
nop
cmp $45141, %rbx

// Store
lea addresses_normal+0xba8e, %r8
xor %r11, %r11
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_WT+0x1090e, %rdi
nop
nop
and $46356, %r14
mov (%rdi), %r11d
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_WC', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
