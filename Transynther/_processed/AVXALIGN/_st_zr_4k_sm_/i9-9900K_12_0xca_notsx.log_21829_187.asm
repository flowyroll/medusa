.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rbp
push %rdx
push %rsi
lea addresses_WT_ht+0x98ac, %rbp
nop
nop
add %rsi, %rsi
movw $0x6162, (%rbp)
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0x19584, %r10
nop
nop
nop
nop
xor %r13, %r13
vmovups (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
nop
nop
nop
cmp $60851, %rdx
lea addresses_D_ht+0x1be28, %r10
sub $63621, %rax
movb (%r10), %dl
nop
nop
nop
nop
nop
xor $9704, %r11
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x1d974, %rsi
lea addresses_normal+0x80a4, %rdi
clflush (%rsi)
nop
nop
xor $919, %r13
mov $49, %rcx
rep movsl
nop
dec %r13

// REPMOV
lea addresses_RW+0x5da2, %rsi
mov $0x1ec, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
mov $85, %rcx
rep movsb
nop
nop
nop
sub %rsi, %rsi

// Load
lea addresses_WC+0x7974, %rcx
nop
nop
nop
add %rdi, %rdi
mov (%rcx), %si
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_WT+0xd174, %r12
nop
sub %r13, %r13
movb $0x51, (%r12)
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_normal+0x1a74, %rax
nop
nop
and %rsi, %rsi
movw $0x5152, (%rax)
nop
nop
nop
add $35221, %rcx

// Store
lea addresses_normal+0xa174, %r13
dec %rcx
movl $0x51525354, (%r13)
nop
nop
nop
dec %rdi

// Faulty Load
lea addresses_WT+0xd174, %rsi
sub %r12, %r12
vmovaps (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_RW'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_P'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'51': 8382, '00': 3, '54': 13444}
54 54 54 54 51 54 54 54 51 54 54 54 51 54 51 51 51 51 51 54 54 54 54 51 54 51 51 54 51 54 54 54 54 51 54 51 54 54 51 54 54 54 51 54 54 51 54 54 54 54 54 51 54 51 51 54 54 54 54 54 54 51 54 54 51 54 51 54 51 51 54 54 51 54 54 54 54 54 54 51 54 51 51 54 54 54 54 54 54 54 54 51 51 51 51 54 51 51 54 51 51 51 54 54 54 51 51 51 54 51 51 51 54 54 54 54 54 54 51 54 51 54 54 54 54 54 54 51 51 54 54 54 54 51 51 54 54 51 54 54 54 51 54 51 54 54 51 51 51 54 51 51 54 51 54 54 54 54 51 51 54 54 51 51 51 54 54 54 54 51 51 54 54 54 51 54 51 54 51 51 51 51 54 54 54 51 54 51 51 54 51 54 51 51 54 54 54 54 54 51 51 54 51 54 54 54 54 54 54 54 54 51 51 54 54 54 54 51 51 54 51 51 54 54 51 51 51 51 51 54 51 54 51 54 54 51 51 54 54 51 54 54 54 54 51 54 54 54 54 54 54 54 54 54 54 51 54 51 51 54 51 54 54 51 54 54 51 54 54 51 51 51 51 54 51 51 54 54 51 54 51 54 54 51 51 51 51 51 51 51 51 54 54 54 51 54 54 54 51 54 51 51 51 54 54 54 54 51 54 54 54 54 54 54 54 54 51 51 54 51 54 51 54 54 54 54 51 54 51 54 54 54 54 54 54 51 51 54 54 51 54 54 54 54 54 51 51 54 51 54 51 54 51 54 54 51 51 54 54 54 51 51 51 54 54 54 54 51 51 51 54 54 54 51 54 51 54 54 54 51 54 51 51 54 51 54 51 54 51 54 54 51 51 51 54 51 54 54 54 54 54 51 54 51 51 51 54 54 54 54 51 51 54 54 51 51 51 51 54 51 51 54 54 54 51 54 54 54 54 54 54 51 51 54 54 54 54 54 54 51 54 54 51 54 54 51 54 54 51 54 54 54 51 54 54 54 54 54 51 54 54 54 51 54 54 51 51 54 54 51 51 54 54 54 51 54 51 54 51 54 51 54 51 51 54 51 54 54 54 54 51 54 51 51 54 54 51 51 54 51 51 54 54 54 54 54 54 54 54 51 54 54 54 54 54 54 54 51 54 54 54 51 51 54 54 51 54 54 54 54 54 54 54 54 51 54 54 54 54 54 51 54 54 51 54 54 54 54 54 51 51 51 51 51 51 54 51 51 54 54 54 54 54 51 54 54 51 54 54 54 54 51 54 54 51 54 54 54 54 54 54 54 54 54 54 54 54 54 51 51 54 51 51 54 54 51 51 54 54 51 54 51 54 54 54 54 54 51 51 51 51 54 51 51 51 54 54 54 51 54 51 54 51 51 54 51 54 51 54 51 51 54 51 51 51 51 54 51 54 54 51 51 51 54 54 51 51 54 54 54 54 51 51 54 51 51 54 54 54 54 54 54 51 51 51 54 51 54 54 51 54 54 54 51 54 54 51 54 54 54 51 54 51 54 54 54 54 51 54 54 54 54 51 54 51 54 54 51 54 54 54 54 54 54 54 51 54 51 54 51 51 54 54 54 51 54 54 51 51 54 54 54 54 54 51 54 51 54 54 54 51 54 54 51 51 54 51 54 54 54 54 51 51 54 51 51 54 51 51 51 51 51 51 51 54 51 54 51 54 54 54 54 51 54 51 54 51 54 54 54 54 54 51 54 54 51 51 54 51 51 54 54 51 54 54 54 54 54 54 54 51 54 54 54 54 54 54 54 54 54 51 54 54 54 51 54 54 54 51 54 54 51 54 54 54 54 54 54 54 54 51 51 51 51 54 51 54 54 54 54 51 51 54 51 54 51 54 51 51 54 54 51 51 54 51 54 54 54 54 54 54 54 54 54 51 54 54 54 54 51 51 54 54 54 51 54 54 54 51 54 51 51 51 54 54 54 54 51 51 54 51 51 51 51 54 51 51 54 54 54 51 54 54 54 54 54 51 51 54 51 54 54 54 54 51 51 51 51 51 51 51 51 51 54 54 54 51 51 54 54 51 54 54 54 54 54 54 54 54 51 51 54 54 54 54 54 51 51 51 54 51 51 51 54 51 54 54 51 51 54 54 54 51 54 51 54 54 54 54 54 54 51 54 54 54 54 54 51 54 51 51 51 54 54 54 54 54 51 54 54 51 51 51 54 51 54 54 54 51 54 54 54 54 54 54 54 54 54 51 51
*/
