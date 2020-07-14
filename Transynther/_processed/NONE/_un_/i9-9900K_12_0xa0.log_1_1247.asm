.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xb36e, %rsi
lea addresses_D_ht+0x16d86, %rdi
nop
nop
sub %r9, %r9
mov $4, %rcx
rep movsb
nop
nop
add %r14, %r14
lea addresses_D_ht+0x14566, %rsi
lea addresses_normal_ht+0x10f86, %rdi
nop
nop
xor $14530, %r9
mov $69, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0xbf86, %rsi
lea addresses_A_ht+0x2b86, %rdi
clflush (%rdi)
sub %rbx, %rbx
mov $105, %rcx
rep movsq
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0x4386, %rsi
lea addresses_UC_ht+0x18186, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r15, %r15
mov $3, %rcx
rep movsq
nop
nop
nop
nop
nop
and $17404, %r15
lea addresses_WC_ht+0x1dd86, %r15
add %rsi, %rsi
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
nop
nop
nop
xor $5353, %rsi
lea addresses_normal_ht+0x28f, %rsi
lea addresses_UC_ht+0x8a06, %rdi
nop
inc %r12
mov $24, %rcx
rep movsw
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x1b806, %rsi
lea addresses_WT_ht+0x3586, %rdi
nop
nop
inc %rbx
mov $89, %rcx
rep movsq
nop
nop
nop
nop
xor $12832, %r14
lea addresses_normal_ht+0x182a6, %r15
nop
nop
nop
nop
nop
xor $47935, %rbx
movb $0x61, (%r15)
nop
nop
nop
nop
inc %r14
lea addresses_WT_ht+0x291a, %rsi
lea addresses_WT_ht+0xff26, %rdi
nop
nop
nop
nop
cmp $42741, %rbx
mov $122, %rcx
rep movsb
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x1e7a6, %rdi
add %rbx, %rbx
mov (%rdi), %r12d
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x5835, %rsi
nop
nop
nop
nop
nop
dec %rcx
mov (%rsi), %r12
nop
mfence
lea addresses_D_ht+0xff06, %rsi
lea addresses_WC_ht+0x5346, %rdi
nop
nop
nop
nop
sub $7525, %r15
mov $93, %rcx
rep movsb
cmp $9842, %r15
lea addresses_A_ht+0x16a0e, %rsi
lea addresses_UC_ht+0x14786, %rdi
nop
nop
and %rbx, %rbx
mov $37, %rcx
rep movsq
nop
nop
nop
sub $46744, %r14
lea addresses_normal_ht+0x3986, %r15
nop
nop
cmp $6333, %r12
movups (%r15), %xmm2
vpextrq $0, %xmm2, %r9
nop
and %rdi, %rdi
lea addresses_UC_ht+0x9486, %rbx
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm1
movups %xmm1, (%rbx)
sub $12050, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x1c986, %rsi
lea addresses_RW+0x69f6, %rdi
nop
nop
add %rbx, %rbx
mov $116, %rcx
rep movsq
and %r11, %r11

// Store
lea addresses_D+0x2bc6, %r11
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_WT+0xcdc6, %rbp
nop
nop
cmp $26472, %rbx
movb $0x51, (%rbp)
nop
nop
nop
and $34407, %rdi

// Store
lea addresses_normal+0x17786, %rcx
nop
nop
sub $31493, %rbp
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
sub $40015, %rbx

// Load
lea addresses_US+0xf1c6, %r10
nop
nop
cmp %rbp, %rbp
mov (%r10), %rcx
nop
nop
nop
nop
nop
sub $46422, %rsi

// Store
lea addresses_D+0x139b3, %rsi
nop
cmp %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
nop
nop
add $54022, %rdi

// Store
lea addresses_PSE+0xbe86, %rbp
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rbp)
nop
nop
and %rcx, %rcx

// Load
lea addresses_WC+0x48da, %rcx
nop
nop
and $64679, %rbp
mov (%rcx), %r10w
nop
nop
nop
sub $53695, %rbx

// Store
lea addresses_UC+0x10b86, %r10
nop
nop
nop
nop
and %rcx, %rcx
movb $0x51, (%r10)
nop
nop
dec %rcx

// Load
lea addresses_UC+0x12786, %rsi
nop
nop
add $62516, %rdi
movb (%rsi), %r11b
nop
xor $42448, %rbx

// Faulty Load
lea addresses_normal+0x17786, %rsi
nop
nop
nop
nop
nop
dec %rbp
mov (%rsi), %bx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 1}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'22': 1}
22
*/
