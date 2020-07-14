.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x91af, %rsi
lea addresses_D_ht+0x14619, %rdi
nop
nop
nop
cmp $21793, %r11
mov $37, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x9d19, %rsi
lea addresses_UC_ht+0x2149, %rdi
clflush (%rsi)
clflush (%rdi)
nop
xor %rax, %rax
mov $17, %rcx
rep movsq
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x6019, %rdi
nop
cmp %rax, %rax
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
sub $42757, %rsi
lea addresses_normal_ht+0x7e5b, %rbp
nop
nop
nop
xor $8752, %rcx
movl $0x61626364, (%rbp)
cmp $24369, %rcx
lea addresses_WT_ht+0xb419, %rsi
lea addresses_UC_ht+0x2019, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov $74, %rcx
rep movsl
nop
nop
nop
nop
nop
add $12379, %r11
lea addresses_WT_ht+0x1b019, %rsi
lea addresses_UC_ht+0x5a99, %rdi
nop
xor $39123, %r15
mov $64, %rcx
rep movsq
nop
and %rdx, %rdx
lea addresses_normal_ht+0x1dd41, %rsi
lea addresses_WT_ht+0x1d8f9, %rdi
clflush (%rdi)
nop
nop
sub %r11, %r11
mov $50, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $58313, %r15
lea addresses_UC_ht+0x5a19, %r11
nop
mfence
vmovups (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x18e99, %r15
nop
and %rax, %rax
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x2c79, %rsi
lea addresses_WC_ht+0x11019, %rdi
nop
nop
nop
nop
nop
add $6427, %r15
mov $90, %rcx
rep movsw
nop
sub $37552, %r11
lea addresses_normal_ht+0x14819, %rsi
lea addresses_A_ht+0x8099, %rdi
nop
nop
dec %r11
mov $94, %rcx
rep movsq
xor $45806, %r15
lea addresses_A_ht+0x3853, %rcx
nop
nop
xor %rbp, %rbp
movw $0x6162, (%rcx)
nop
xor $20499, %rdi
lea addresses_normal_ht+0x841d, %rax
sub %rdi, %rdi
movups (%rax), %xmm6
vpextrq $1, %xmm6, %rbp
sub %rax, %rax
lea addresses_D_ht+0x4e19, %rdi
nop
nop
nop
nop
nop
sub $49601, %rax
movw $0x6162, (%rdi)
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x86f1, %rdx
nop
xor $48155, %r15
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
dec %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0xd819, %r9
sub $57997, %rcx
movups (%r9), %xmm7
vpextrq $0, %xmm7, %r10
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rdx
pop %rcx
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
