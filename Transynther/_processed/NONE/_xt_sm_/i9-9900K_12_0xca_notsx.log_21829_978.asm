.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1a821, %rbx
nop
nop
and %rbp, %rbp
movw $0x6162, (%rbx)
nop
nop
sub $41979, %r10
lea addresses_D_ht+0x166a1, %r9
nop
nop
xor $49427, %r11
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x66f1, %rbp
nop
cmp %r10, %r10
mov $0x6162636465666768, %rax
movq %rax, (%rbp)
nop
cmp %r10, %r10
lea addresses_UC_ht+0x1bba1, %r9
nop
nop
nop
nop
nop
xor $30153, %r12
movw $0x6162, (%r9)
nop
nop
nop
nop
inc %r9
lea addresses_UC_ht+0xb4a1, %r12
nop
nop
nop
xor %r11, %r11
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0xef21, %rbp
nop
nop
nop
sub $56322, %r12
mov (%rbp), %r9w
nop
sub $30642, %r12
lea addresses_normal_ht+0x146d9, %r9
nop
nop
add $24821, %r12
mov $0x6162636465666768, %rax
movq %rax, (%r9)
nop
nop
nop
nop
inc %r9
lea addresses_WC_ht+0x187a1, %r12
dec %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
movups %xmm4, (%r12)
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x6e81, %rsi
lea addresses_normal_ht+0x7064, %rdi
clflush (%rsi)
nop
nop
xor $46307, %rbp
mov $66, %rcx
rep movsq
nop
dec %r12
lea addresses_UC_ht+0x1ab21, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
inc %rdi
movb (%rcx), %r10b
nop
nop
nop
nop
xor $10171, %rax
lea addresses_D_ht+0x65a1, %rbp
nop
nop
sub %rcx, %rcx
movups (%rbp), %xmm2
vpextrq $1, %xmm2, %r11
xor $23685, %rdi
lea addresses_D_ht+0xc489, %r11
nop
nop
xor $33445, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0x1e5a1, %r10
nop
nop
nop
nop
and $44630, %rdi
movups (%r10), %xmm7
vpextrq $1, %xmm7, %rcx
nop
and $63390, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x73a1, %rsi
lea addresses_A+0x1dba1, %rdi
nop
nop
nop
nop
nop
and $2339, %r14
mov $31, %rcx
rep movsw
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_A+0x1dba1, %r9
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
nop
add $10183, %rsi

// Store
lea addresses_UC+0x1eba1, %rdi
nop
nop
nop
inc %rbp
movw $0x5152, (%rdi)
nop
nop
nop
nop
sub $19434, %r14

// REPMOV
lea addresses_A+0x1dba1, %rsi
lea addresses_normal+0xd501, %rdi
nop
nop
inc %r13
mov $5, %rcx
rep movsw
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_A+0x1dba1, %rbp
nop
nop
nop
nop
nop
add %r9, %r9
vmovups (%rbp), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': True, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
