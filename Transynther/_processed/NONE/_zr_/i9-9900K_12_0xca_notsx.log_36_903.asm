.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xea4c, %rax
nop
add %rcx, %rcx
vmovups (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x987d, %rsi
lea addresses_D_ht+0x1509c, %rdi
nop
nop
nop
add $28423, %rbx
mov $23, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $12114, %rcx
lea addresses_UC_ht+0x116ec, %rcx
nop
nop
nop
nop
nop
sub $32039, %rax
movl $0x61626364, (%rcx)
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x1971c, %rbx
nop
nop
and %r11, %r11
mov (%rbx), %eax
nop
dec %rax
lea addresses_D_ht+0x8d9c, %rsi
lea addresses_UC_ht+0x16b1c, %rdi
nop
nop
nop
and %r15, %r15
mov $64, %rcx
rep movsq
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1349c, %rsi
add $2989, %rax
movw $0x6162, (%rsi)
nop
nop
nop
nop
dec %rbx
lea addresses_D_ht+0x1c51c, %rax
clflush (%rax)
add $21051, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rax)
nop
nop
add $46247, %rcx
lea addresses_UC_ht+0x1229c, %rbx
nop
and %r12, %r12
vmovups (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
nop
nop
nop
and $379, %r12
lea addresses_UC_ht+0x209c, %r11
nop
nop
nop
nop
nop
dec %r15
movl $0x61626364, (%r11)
nop
nop
nop
cmp $26975, %rax
lea addresses_D_ht+0x1519f, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
sub %r15, %r15
movl $0x61626364, (%rbx)
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x1209c, %rax
nop
nop
nop
inc %r15
mov (%rax), %r11w
nop
nop
and $55742, %rdi
lea addresses_WC_ht+0xf5b0, %rsi
lea addresses_D_ht+0x2810, %rdi
cmp $19064, %r12
mov $124, %rcx
rep movsb
nop
sub %r11, %r11
lea addresses_normal_ht+0x12502, %r11
nop
nop
nop
and $16541, %rdi
mov (%r11), %r15d
nop
nop
nop
add $57243, %rax
lea addresses_normal_ht+0x1571c, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov (%rdi), %rcx
nop
nop
xor %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WC+0x13ad8, %rsi
lea addresses_A+0x1589c, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov $125, %rcx
rep movsq
nop
nop
nop
xor $50340, %r14

// Store
lea addresses_A+0x1269c, %rdx
nop
nop
nop
add $53799, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_PSE+0x1d0fc, %rsi
inc %rbx
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
and %r9, %r9

// Store
lea addresses_PSE+0x909c, %rdx
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rdx)
sub %r14, %r14

// Load
lea addresses_PSE+0xe5c, %rcx
nop
nop
nop
xor %r14, %r14
mov (%rcx), %rsi
nop
nop
sub $42902, %rdi

// Store
lea addresses_UC+0x1ac44, %rsi
nop
cmp %r9, %r9
movw $0x5152, (%rsi)
nop
nop
nop
nop
dec %rdi

// REPMOV
lea addresses_US+0x909c, %rsi
lea addresses_D+0x11f9, %rdi
xor %r14, %r14
mov $99, %rcx
rep movsb
nop
nop
nop
inc %rcx

// Store
lea addresses_WC+0x1a9bc, %rdi
nop
nop
nop
nop
sub $22669, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
cmp $61544, %rsi

// Faulty Load
lea addresses_PSE+0x909c, %rdi
nop
sub %r14, %r14
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_US'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'00': 36}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
