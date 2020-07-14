.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xc59f, %r15
inc %r10
mov (%r15), %r12d
add $36712, %rax
lea addresses_A_ht+0x119f, %rsi
lea addresses_WT_ht+0x167af, %rdi
nop
nop
nop
nop
nop
sub $13552, %rbx
mov $124, %rcx
rep movsw
nop
nop
dec %r10
lea addresses_UC_ht+0x9a1f, %rcx
nop
nop
nop
nop
nop
and %r15, %r15
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
and $40744, %rax
lea addresses_D_ht+0x37ef, %r10
nop
nop
and %r12, %r12
mov (%r10), %ebx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x1bf7f, %rsi
lea addresses_WC_ht+0x59f, %rdi
nop
nop
nop
nop
nop
cmp $56488, %rbx
mov $108, %rcx
rep movsw
nop
nop
nop
inc %r15
lea addresses_A_ht+0x12f19, %r15
clflush (%r15)
add %rax, %rax
movb $0x61, (%r15)
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0xcd9f, %rsi
lea addresses_WT_ht+0x9f, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $17, %rcx
rep movsq
nop
nop
inc %r15
lea addresses_WC_ht+0x1d59f, %rcx
nop
nop
nop
nop
nop
dec %rax
movw $0x6162, (%rcx)
nop
and %r15, %r15
lea addresses_A_ht+0x859f, %rax
nop
dec %r10
movb $0x61, (%rax)
nop
nop
nop
inc %r12
lea addresses_WC_ht+0x1244f, %r15
nop
nop
nop
and $27673, %rdi
mov (%r15), %r12w
xor %rdi, %rdi
lea addresses_normal_ht+0xf49f, %rax
xor %r12, %r12
vmovups (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
nop
sub $57772, %rbx
lea addresses_D_ht+0x7fb3, %r12
nop
nop
nop
lfence
mov (%r12), %r15w
cmp $53835, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rax
push %rdx

// Store
lea addresses_RW+0x11e9f, %r10
nop
nop
dec %rax
movw $0x5152, (%r10)
inc %r14

// Store
mov $0x1da4cb0000000e9f, %rdx
nop
nop
xor %r12, %r12
movw $0x5152, (%rdx)
nop
nop
cmp $54844, %r14

// Faulty Load
lea addresses_PSE+0xa59f, %r10
nop
and %r11, %r11
vmovntdqa (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rdx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'00': 1370, '45': 13912, '44': 6547}
00 45 45 45 44 45 45 45 44 45 44 44 45 00 45 45 45 00 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 44 45 45 45 45 44 44 45 00 45 45 00 45 45 45 44 45 45 44 45 44 45 45 45 45 45 45 00 45 45 45 44 45 44 45 45 44 45 45 45 45 44 45 45 45 45 44 44 45 44 45 44 45 44 45 44 44 44 45 44 45 45 45 44 45 45 00 44 45 00 45 45 44 45 45 45 44 45 45 44 45 45 45 45 45 44 44 45 44 45 00 45 44 45 44 45 45 45 44 44 44 45 44 44 45 44 45 45 45 45 45 44 45 45 45 00 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 44 45 44 45 00 45 45 45 45 44 45 00 45 44 45 44 45 45 44 45 00 45 45 45 45 45 45 44 45 44 44 44 45 00 45 45 44 45 44 45 44 44 45 44 45 44 45 45 45 44 45 45 45 45 45 45 45 45 44 44 45 44 45 45 45 45 45 00 45 45 45 45 44 44 45 44 45 44 44 45 44 45 45 44 45 00 45 44 45 44 45 45 44 44 45 44 45 45 44 44 45 00 45 44 45 45 45 44 44 45 45 45 45 45 45 45 44 45 44 44 45 44 45 45 45 45 45 45 44 45 45 45 45 44 45 00 45 45 45 44 45 45 44 45 45 00 45 45 00 45 44 45 44 45 44 45 44 45 45 45 44 45 44 44 44 45 44 45 45 44 45 44 44 45 45 45 00 45 44 45 45 44 44 45 44 45 45 45 45 45 45 44 45 00 44 45 45 45 45 45 44 45 44 44 44 44 45 45 44 45 44 45 45 44 45 45 44 45 45 45 45 44 44 45 45 44 45 00 44 45 45 45 45 44 45 44 44 45 44 45 45 45 44 44 45 45 45 00 45 44 45 44 45 44 44 44 45 44 45 45 45 44 45 45 45 45 44 45 44 44 45 44 44 45 44 45 45 44 45 45 45 00 45 45 45 45 45 44 45 44 44 45 44 45 45 00 45 44 45 45 45 44 44 45 45 00 45 45 45 44 45 45 45 00 44 45 45 45 44 45 45 45 44 45 00 44 45 44 44 45 45 00 45 45 45 45 45 45 44 44 45 44 45 44 45 44 44 44 45 45 45 45 45 44 45 45 45 00 45 45 45 45 44 45 44 45 44 45 45 45 45 44 44 45 45 44 45 45 45 45 44 45 45 44 45 45 45 45 45 44 45 45 45 45 44 45 44 45 00 45 45 45 45 44 45 45 45 45 44 45 00 45 45 45 45 45 00 45 45 44 45 45 45 45 45 44 45 45 45 45 00 45 45 45 44 00 45 45 45 45 44 44 45 44 45 44 44 45 44 45 44 45 45 45 44 45 00 44 45 45 45 45 45 00 45 45 45 45 44 44 44 44 45 44 45 45 45 44 45 44 45 44 45 44 44 45 45 45 45 45 44 45 45 44 44 44 45 45 45 44 44 45 00 45 45 45 45 45 44 45 44 44 45 45 45 45 45 44 45 45 45 45 45 45 45 44 45 44 44 45 44 45 44 45 45 44 45 45 45 44 45 44 45 45 45 45 44 44 45 45 44 45 45 45 00 45 45 45 45 44 45 45 45 00 45 45 45 45 44 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 44 45 45 45 00 45 45 45 45 00 45 45 45 44 45 00 45 44 45 44 45 45 45 45 00 45 44 45 44 45 00 45 45 44 45 44 44 45 44 45 45 45 44 44 44 45 45 45 45 45 45 44 45 00 44 45 45 45 45 45 44 45 44 45 45 44 45 44 44 45 45 00 44 44 45 45 45 44 44 44 45 44 45 45 45 45 44 45 44 44 44 45 45 45 45 44 44 45 44 44 44 45 45 44 45 00 45 45 44 44 45 45 45 44 45 00 44 44 45 44 45 44 45 00 45 44 45 45 45 45 44 45 45 45 45 44 45 45 44 45 45 45 44 45 44 45 44 45 44 44 45 44 45 00 45 45 45 45 44 45 44 44 45 44 44 45 00 45 45 45 45 00 45 45 45 45 00 45 45 44 45 00 45 45 44 45 44 44 45 44 45 44 44 45 45 44 44 45 44 45 44 44 45 45 45 44 45 44 44 45 44 44 45 45 00 45 45 45 44 45 00 45 44 45 44 45 45 00 45 45 45 45 44 45 45 45 44 45 45 45 00 45 44
*/
