.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x21c3, %rbp
nop
dec %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rbp)
nop
sub $15116, %r9
lea addresses_WC_ht+0xdceb, %r13
nop
nop
sub $40209, %r11
movb (%r13), %dl
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x16c3, %r11
nop
nop
nop
nop
cmp $1403, %r13
mov (%r11), %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x16fc3, %r11
nop
nop
nop
nop
nop
cmp $36191, %r8
mov (%r11), %r9d
nop
nop
nop
nop
cmp $64362, %r11
lea addresses_UC_ht+0x13dc3, %r11
nop
nop
nop
nop
cmp %rdx, %rdx
movl $0x61626364, (%r11)
cmp %rbp, %rbp
lea addresses_normal_ht+0xf59a, %r9
clflush (%r9)
cmp %rdx, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
cmp $64570, %rdi
lea addresses_WT_ht+0x171c3, %rbp
nop
nop
nop
inc %r8
vmovups (%rbp), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r11
sub $12274, %rbp
lea addresses_UC_ht+0x1a725, %r9
nop
sub $20732, %rdx
mov (%r9), %edi
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x15f43, %rsi
lea addresses_WC_ht+0x17c3, %rdi
nop
nop
nop
nop
nop
add $44670, %r9
mov $37, %rcx
rep movsb
add %r13, %r13
lea addresses_WC_ht+0x5dc3, %r13
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%r13)
nop
and %r13, %r13
lea addresses_WT_ht+0xffd3, %rsi
lea addresses_WT_ht+0x131eb, %rdi
nop
nop
nop
cmp %r13, %r13
mov $100, %rcx
rep movsw
nop
sub $4398, %rbp
lea addresses_UC_ht+0x1bdc3, %rsi
lea addresses_WC_ht+0xb5c3, %rdi
nop
nop
nop
nop
nop
sub $27241, %r13
mov $97, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r9
lea addresses_WT_ht+0x1e463, %rdi
xor $50022, %rdx
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x12ec3, %rdi
nop
nop
xor $40003, %rbp
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
nop
add %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Faulty Load
mov $0x1c3, %rcx
dec %r9
mov (%rcx), %ebp
lea oracles, %r15
and $0xff, %rbp
shlq $12, %rbp
mov (%r15,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'00': 54}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
