.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x595e, %rsi
lea addresses_A_ht+0x1367b, %rdi
nop
nop
and $62425, %r13
mov $79, %rcx
rep movsw
nop
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x1099e, %r15
add %r13, %r13
mov (%r15), %esi
xor %rdi, %rdi
lea addresses_WC_ht+0x5922, %r13
clflush (%r13)
sub %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
and $0xffffffffffffffc0, %r13
vmovaps %ymm2, (%r13)
nop
nop
nop
and %r14, %r14
lea addresses_UC_ht+0x1e65e, %rcx
nop
nop
and %rsi, %rsi
mov (%rcx), %edi
nop
nop
nop
cmp $1075, %r15
lea addresses_normal_ht+0x1a46e, %r14
nop
nop
mfence
movl $0x61626364, (%r14)
nop
nop
nop
nop
sub $33401, %r14
lea addresses_WT_ht+0xaf86, %r13
nop
lfence
mov $0x6162636465666768, %r15
movq %r15, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
nop
inc %r9
lea addresses_A_ht+0x19af0, %rsi
lea addresses_A_ht+0x1ad0e, %rdi
nop
nop
nop
nop
nop
and $15154, %rbp
mov $107, %rcx
rep movsl
nop
nop
nop
nop
cmp $62756, %r13
lea addresses_A_ht+0x10d30, %rsi
lea addresses_A_ht+0x45e, %rdi
nop
cmp $55131, %r15
mov $65, %rcx
rep movsl
nop
nop
nop
add $19959, %rsi
lea addresses_WT_ht+0x14482, %r15
clflush (%r15)
nop
nop
nop
add $43421, %rbp
mov (%r15), %rcx
nop
nop
nop
sub $37254, %rbp
lea addresses_A_ht+0xa02d, %r9
nop
and %r14, %r14
mov (%r9), %rsi
and %r9, %r9
lea addresses_UC_ht+0x19b67, %rsi
lea addresses_A_ht+0x16e46, %rdi
nop
xor $59999, %r15
mov $125, %rcx
rep movsq
add %r14, %r14
lea addresses_WT_ht+0x3e5e, %r14
clflush (%r14)
nop
nop
inc %r9
movb $0x61, (%r14)
nop
nop
cmp $24631, %r13
lea addresses_D_ht+0x1d971, %rsi
lea addresses_A_ht+0x1675e, %rdi
nop
nop
add $49678, %r15
mov $39, %rcx
rep movsb
nop
nop
nop
nop
xor $59522, %r13
lea addresses_WC_ht+0x1d29e, %rsi
lea addresses_normal_ht+0x1e74e, %rdi
nop
nop
nop
inc %rbp
mov $104, %rcx
rep movsl
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_UC+0xc640, %r11
nop
nop
nop
nop
xor %rax, %rax
mov (%r11), %r12w
nop
xor $18606, %r12

// REPMOV
lea addresses_PSE+0x1a76e, %rsi
lea addresses_WC+0x159ea, %rdi
clflush (%rdi)
nop
nop
nop
and $19341, %r9
mov $95, %rcx
rep movsw
nop
nop
nop
sub $37519, %rcx

// Load
lea addresses_D+0x1fe5e, %r11
nop
nop
and $4005, %r12
movups (%r11), %xmm6
vpextrq $1, %xmm6, %r9
nop
nop
nop
nop
nop
dec %r9

// Store
lea addresses_PSE+0xb65e, %rcx
nop
nop
nop
nop
cmp $6801, %r11
movb $0x51, (%rcx)
cmp $30058, %rbx

// REPMOV
lea addresses_A+0x1aa5e, %rsi
lea addresses_PSE+0xb65e, %rdi
and %r12, %r12
mov $96, %rcx
rep movsw
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_WT+0x10f5e, %rbx
nop
nop
nop
nop
nop
add $43343, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rbx)

// Exception!!!
nop
nop
nop
mov (0), %rsi
nop
nop
nop
inc %rax

// Store
lea addresses_D+0x1931e, %r9
cmp $61023, %r11
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
add $61070, %r9

// Faulty Load
lea addresses_PSE+0xb65e, %rsi
nop
nop
and %r12, %r12
mov (%rsi), %edi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
