.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x2a24, %r9
sub $14727, %rcx
movw $0x6162, (%r9)
nop
xor %r15, %r15
lea addresses_WT_ht+0xa24, %r15
nop
nop
nop
nop
and $4093, %r12
mov $0x6162636465666768, %r10
movq %r10, (%r15)
nop
and %rcx, %rcx
lea addresses_D_ht+0x188f4, %rsi
lea addresses_normal_ht+0x12e38, %rdi
nop
nop
xor $59059, %r9
mov $110, %rcx
rep movsb
nop
nop
and %r12, %r12
lea addresses_WC_ht+0xda24, %rcx
dec %rsi
mov (%rcx), %r9w
nop
xor $46322, %r15
lea addresses_UC_ht+0x14d9e, %rsi
lea addresses_UC_ht+0xdda4, %rdi
nop
nop
nop
nop
nop
inc %rdx
mov $44, %rcx
rep movsq
cmp $7188, %rsi
lea addresses_D_ht+0x15924, %rsi
lea addresses_A_ht+0x1ca24, %rdi
nop
sub %r15, %r15
mov $108, %rcx
rep movsl
nop
nop
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0xf024, %r15
nop
nop
nop
nop
nop
add $28512, %r10
movb (%r15), %r12b
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x1bd30, %rsi
lea addresses_D_ht+0x17224, %rdi
nop
nop
nop
inc %r15
mov $42, %rcx
rep movsl
nop
nop
nop
nop
inc %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Store
mov $0x47f4cd0000000564, %rax
nop
nop
nop
nop
cmp $25220, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
nop
dec %rsi

// Store
lea addresses_UC+0x33d4, %r10
nop
nop
sub $46911, %r9
movl $0x51525354, (%r10)
nop
nop
cmp $23017, %rsi

// Store
lea addresses_WC+0xb564, %rax
nop
nop
nop
nop
nop
xor %r10, %r10
movb $0x51, (%rax)
nop
nop
nop
xor $732, %r9

// Store
mov $0x360, %rbp
nop
xor %r15, %r15
movl $0x51525354, (%rbp)
sub %r10, %r10

// Load
lea addresses_A+0xda24, %r9
nop
cmp $46140, %rax
mov (%r9), %edi
sub %rbp, %rbp

// Faulty Load
lea addresses_A+0xda24, %rbp
xor $38638, %r9
vmovups (%rbp), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'46': 2, '00': 1}
46 00 46
*/
