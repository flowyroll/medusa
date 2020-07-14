.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x10f2d, %rsi
lea addresses_normal_ht+0x9939, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $92, %rcx
rep movsb
nop
nop
inc %rbp
lea addresses_WC_ht+0x6f51, %r9
nop
add $58582, %rbx
mov (%r9), %cx
nop
and $26337, %rbp
lea addresses_UC_ht+0x1d1e5, %rcx
nop
nop
add %r9, %r9
mov (%rcx), %rsi
inc %r9
lea addresses_UC_ht+0xe173, %r9
nop
nop
nop
nop
add %rcx, %rcx
mov (%r9), %di
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0x1ede5, %rsi
cmp $56753, %rcx
mov (%rsi), %r11d
nop
xor $52702, %rsi
lea addresses_UC_ht+0x88e5, %rsi
clflush (%rsi)
nop
cmp %r11, %r11
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x17355, %rdi
nop
nop
nop
nop
and $57520, %rbp
movw $0x6162, (%rdi)
nop
and $39274, %r11
lea addresses_UC_ht+0x10b68, %r9
nop
nop
and $16954, %rbx
movl $0x61626364, (%r9)
xor %rbp, %rbp
lea addresses_UC_ht+0x1b745, %rbx
nop
add $30578, %r11
movb $0x61, (%rbx)
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %r9
push %rsi

// Store
lea addresses_WC+0x8525, %r15
nop
nop
nop
nop
nop
sub $52773, %r9
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
sub $3556, %r9

// Faulty Load
lea addresses_US+0x1e5, %r14
nop
nop
nop
dec %r12
vmovups (%r14), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rsi
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'00': 4}
00 00 00 00
*/
