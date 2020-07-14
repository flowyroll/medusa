.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1ecc4, %r12
nop
nop
nop
nop
and $27796, %rbp
movl $0x61626364, (%r12)
and $56180, %r11
lea addresses_D_ht+0x29e4, %rsi
lea addresses_UC_ht+0x5384, %rdi
nop
nop
xor $37777, %r10
mov $106, %rcx
rep movsb
sub %r12, %r12
lea addresses_D_ht+0x1e394, %rcx
nop
nop
nop
nop
nop
add $43223, %r12
mov (%rcx), %rbp
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x15a04, %rsi
lea addresses_normal_ht+0x32c4, %rdi
nop
nop
xor $30019, %r12
mov $116, %rcx
rep movsw
nop
nop
nop
and $33935, %r10
lea addresses_WC_ht+0xc4, %rsi
lea addresses_D_ht+0x1b075, %rdi
cmp $37769, %r12
mov $43, %rcx
rep movsb
nop
nop
and %r11, %r11
lea addresses_normal_ht+0xa0c4, %rcx
nop
nop
nop
nop
xor %r14, %r14
movw $0x6162, (%rcx)
nop
inc %r14
lea addresses_A_ht+0x54c4, %rsi
lea addresses_D_ht+0x18ec4, %rdi
clflush (%rsi)
xor %r10, %r10
mov $112, %rcx
rep movsb
nop
cmp %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0xd4bc, %rdx
clflush (%rdx)
and %rax, %rax
movl $0x51525354, (%rdx)
nop
nop
sub %r15, %r15

// Faulty Load
lea addresses_US+0x38c4, %r11
nop
nop
nop
nop
dec %rsi
vmovups (%r11), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
