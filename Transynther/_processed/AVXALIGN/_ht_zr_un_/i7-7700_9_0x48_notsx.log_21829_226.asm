.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x568, %rbp
nop
nop
add %r12, %r12
mov (%rbp), %r10w
nop
cmp $62343, %r13
lea addresses_WT_ht+0x7265, %rcx
add %rsi, %rsi
movb (%rcx), %r12b
nop
nop
nop
and %r13, %r13
lea addresses_normal_ht+0x12e2c, %r12
nop
nop
nop
dec %r15
movb (%r12), %cl
nop
nop
cmp %r15, %r15
lea addresses_WC_ht+0xbd68, %rbp
nop
nop
nop
nop
add $32100, %rcx
movb (%rbp), %r10b
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x15fa8, %rsi
lea addresses_A_ht+0x1990d, %rdi
clflush (%rsi)
nop
nop
add %r10, %r10
mov $17, %rcx
rep movsq
nop
nop
xor $46946, %r13
lea addresses_UC_ht+0x1a088, %rdi
nop
add $20127, %r15
movw $0x6162, (%rdi)
sub %rcx, %rcx
lea addresses_WC_ht+0x6e78, %rsi
lea addresses_A_ht+0x14e68, %rdi
nop
cmp %r12, %r12
mov $48, %rcx
rep movsq
nop
cmp $3817, %rdi
lea addresses_normal_ht+0x16e68, %rsi
lea addresses_D_ht+0x106d0, %rdi
nop
nop
nop
nop
and $27810, %r15
mov $7, %rcx
rep movsl
cmp $60692, %r10
lea addresses_WT_ht+0x1e1e8, %r10
nop
nop
nop
nop
cmp %rdi, %rdi
movl $0x61626364, (%r10)
nop
nop
add $47817, %rdi
lea addresses_WC_ht+0x197c, %rbp
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rbp)
nop
add $3487, %r12
lea addresses_D_ht+0x1ab68, %rsi
lea addresses_UC_ht+0x2978, %rdi
nop
nop
nop
sub $18367, %r13
mov $68, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x1eae8, %r13
and %r12, %r12
movb $0x61, (%r13)
nop
nop
nop
nop
and $60238, %r13
lea addresses_WC_ht+0x2168, %r13
nop
nop
nop
nop
inc %r15
mov (%r13), %rbp
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0xf762, %r12
clflush (%r12)
nop
nop
nop
nop
xor $44450, %rcx
movb $0x61, (%r12)
nop
nop
and $6609, %rbp
lea addresses_A_ht+0x15d58, %rbp
nop
nop
nop
nop
inc %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
nop
nop
and $186, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x725e, %rsi
clflush (%rsi)
nop
nop
nop
sub $20022, %r13
movl $0x51525354, (%rsi)
nop
nop
nop
sub %r13, %r13

// Load
lea addresses_UC+0x6568, %rbp
nop
nop
nop
nop
inc %r12
and $0xffffffffffffffc0, %rbp
vmovaps (%rbp), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_PSE+0x17538, %r13
clflush (%r13)
sub %r11, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movups %xmm0, (%r13)
nop
add %r11, %r11

// REPMOV
lea addresses_WC+0x17968, %rsi
lea addresses_normal+0x19d68, %rdi
clflush (%rsi)
nop
nop
nop
inc %rbp
mov $17, %rcx
rep movsb
nop
nop
xor $41613, %r11

// Faulty Load
lea addresses_normal+0x19d68, %r11
nop
nop
sub $59985, %rdi
vmovaps (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_UC', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'06': 19, '46': 8553, '00': 13257}
46 46 00 46 46 00 46 00 46 46 46 46 46 46 46 00 00 00 00 00 46 00 46 46 00 00 00 00 00 46 46 00 00 46 46 00 00 46 46 46 46 46 46 46 46 00 00 46 46 46 46 46 00 46 00 00 00 00 00 00 46 46 46 46 00 00 00 00 00 00 46 00 00 00 00 00 00 46 46 00 00 00 46 00 00 46 00 46 46 46 00 00 00 00 00 46 00 00 46 46 00 46 00 00 46 00 46 46 46 00 46 46 46 46 00 00 00 00 00 00 00 00 00 00 46 46 46 46 00 46 00 46 00 00 00 00 00 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 00 00 46 00 00 46 00 00 46 00 00 46 00 46 46 00 46 00 00 46 46 46 46 46 00 46 00 46 46 00 00 00 46 00 00 46 46 46 00 46 00 46 00 00 46 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 46 46 00 46 00 00 00 00 00 00 46 00 00 46 00 46 00 46 46 00 46 46 46 00 46 00 46 00 00 00 00 46 46 46 46 00 46 00 00 00 00 46 00 00 00 00 46 00 46 46 46 46 46 00 00 46 46 46 00 00 46 00 46 46 00 00 46 46 00 00 00 00 46 46 00 00 00 00 46 46 00 46 46 46 00 46 00 46 00 46 46 00 00 00 00 46 00 00 00 00 46 46 46 00 46 00 00 46 00 00 46 00 46 46 46 00 00 00 00 00 00 46 46 46 00 46 00 46 46 00 46 00 46 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 46 00 00 46 00 00 46 46 46 46 46 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 46 46 00 46 00 00 00 00 00 00 00 00 00 46 46 46 00 46 46 00 46 00 46 00 00 00 00 46 46 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 46 00 46 00 46 00 00 46 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 46 46 00 46 46 46 46 46 00 46 00 46 00 00 00 00 00 00 46 00 00 46 00 00 46 00 46 46 00 46 00 46 00 00 46 46 00 00 46 00 00 00 00 00 00 46 46 00 46 00 00 46 00 00 00 46 00 46 00 46 00 46 46 46 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 46 46 46 00 00 00 46 00 46 46 00 00 46 46 46 00 46 00 00 00 46 00 00 46 00 00 00 00 46 00 46 46 46 00 46 46 46 00 00 00 00 00 00 00 00 46 00 46 46 00 00 00 00 00 46 46 46 46 00 00 46 00 46 00 00 00 00 00 00 46 46 46 46 00 46 46 00 00 00 46 00 00 00 00 46 00 46 46 00 00 00 46 46 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 46 46 46 00 46 00 00 00 46 00 46 00 00 00 00 00 46 00 00 00 00 46 00 46 00 46 00 46 00 00 00 00 00 00 00 00 46 46 46 46 00 00 00 46 46 00 00 46 46 00 46 46 00 00 00 46 46 46 46 46 46 00 00 00 00 46 46 00 46 46 46 46 00 00 46 00 00 46 46 00 46 46 00 00 46 00 00 46 00 46 00 00 46 00 00 00 00 00 00 46 00 46 00 00 46 46 00 00 00 00 00 00 00 00 00 46 00 00 46 46 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 46 46 46 00 00 00 00 00 00 00 46 46 46 46 46 00 46 00 46 46 00 00 00 00 46 46 00 00 00 00 46 00 00 46 46 00 00 00 00 00 00 00 46 46 46 46 00 46 00 00 00 46 00 00 46 00 00 00 00 46 46 46 46 00 46 00 46 46 00 00 00 00 46 46 46 46 46 00 00 46 00 46 46 00 00 46 46 46 00 00 00 00 00 00 00 46 46 46 46 00 00 00 00 00 00 46 46 00 00 46 46 00 46 46 00 00 00 00 00 46 00 00 46 00 46 00 46 46 00 00 00 46 00 00 46 46 46 46 46 00 00 46 46 00 00 00 46 00 00 46 46 00 00 46 00 00 46 00 00 00 46 00 00 00 46 00 46 00 00 00 46 00 00 46 00 00 00 00 00 46 00 00 46 46 00 46 46 00 00 46 00 00 00 46 00 00 46
*/
