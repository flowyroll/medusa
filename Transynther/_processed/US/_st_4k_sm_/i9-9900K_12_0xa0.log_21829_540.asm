.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x160dd, %rsi
lea addresses_normal_ht+0x12bdd, %rdi
nop
inc %r11
mov $101, %rcx
rep movsl
nop
nop
sub $44293, %r13
lea addresses_WT_ht+0x1185d, %rsi
lea addresses_WT_ht+0x1abfd, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov $121, %rcx
rep movsq
nop
xor %r11, %r11
lea addresses_WT_ht+0x735d, %rsi
lea addresses_D_ht+0x198dd, %rdi
nop
inc %r13
mov $41, %rcx
rep movsw
nop
and %rcx, %rcx
lea addresses_UC_ht+0x15625, %rsi
lea addresses_D_ht+0x12c09, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %r10, %r10
mov $102, %rcx
rep movsb
nop
nop
nop
nop
cmp $865, %rdi
lea addresses_WC_ht+0xf7dd, %r11
nop
nop
nop
and $16381, %rcx
vmovups (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1ca9d, %rsi
nop
nop
and $47965, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rsi)
nop
add $41569, %r13
lea addresses_UC_ht+0x1721d, %rsi
lea addresses_A_ht+0xad89, %rdi
nop
xor %rbp, %rbp
mov $50, %rcx
rep movsw
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x59cd, %rsi
lea addresses_normal_ht+0x19dd, %rdi
nop
nop
nop
nop
nop
and $47278, %r10
mov $16, %rcx
rep movsq
nop
nop
nop
nop
nop
add $62193, %r13
lea addresses_WC_ht+0x746, %rsi
nop
nop
nop
xor %r11, %r11
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
dec %r13
lea addresses_UC_ht+0x14ddd, %rdi
nop
nop
add $32155, %r13
vmovups (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r10
nop
dec %rcx
lea addresses_D_ht+0x86dd, %r11
nop
nop
nop
nop
nop
xor %rcx, %rcx
movb $0x61, (%r11)
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x1d4ad, %rsi
lea addresses_D_ht+0x1773d, %rdi
nop
nop
nop
nop
and $19090, %r10
mov $29, %rcx
rep movsl
dec %r13
lea addresses_WT_ht+0x111d1, %r10
nop
nop
nop
nop
nop
add $8943, %rcx
mov $0x6162636465666768, %r13
movq %r13, (%r10)
nop
nop
nop
add $1053, %r13
lea addresses_normal_ht+0x14ac5, %rsi
lea addresses_WC_ht+0x3df5, %rdi
nop
nop
xor %r13, %r13
mov $123, %rcx
rep movsq
nop
and $1561, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rdx
push %rsi

// Store
lea addresses_WC+0x33dd, %r14
add $52963, %r10
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
nop
dec %rax

// Store
lea addresses_A+0x3bdd, %r14
nop
nop
sub $375, %r15
movl $0x51525354, (%r14)
nop
sub %rax, %rax

// Store
lea addresses_US+0xefdd, %r15
xor %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, (%r15)
nop
xor $21306, %rdx

// Store
mov $0xfdd, %r14
nop
nop
nop
cmp $8151, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
nop
dec %rax

// Store
lea addresses_A+0x205d, %rdx
nop
nop
nop
nop
and $50484, %rax
movl $0x51525354, (%rdx)
nop
add %r15, %r15

// Store
lea addresses_WC+0x1c45d, %rax
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rax)
and $17269, %r14

// Store
lea addresses_D+0x151ed, %rsi
nop
nop
nop
nop
nop
add $56900, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%rsi)
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_US+0xefdd, %rsi
nop
nop
nop
dec %r10
mov (%rsi), %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 1}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
