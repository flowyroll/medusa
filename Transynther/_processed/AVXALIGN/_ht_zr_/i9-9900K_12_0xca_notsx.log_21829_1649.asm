.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xf21e, %rsi
lea addresses_WC_ht+0x6e1e, %rdi
nop
nop
nop
nop
nop
inc %r9
mov $64, %rcx
rep movsb
nop
nop
nop
nop
nop
and $19601, %r13
lea addresses_D_ht+0x2b1e, %rsi
lea addresses_D_ht+0x2cd6, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $126, %rcx
rep movsb
nop
nop
cmp $18798, %rsi
lea addresses_UC_ht+0x1421e, %r8
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r8), %esi
nop
add %r9, %r9
lea addresses_A_ht+0x8e1e, %rsi
clflush (%rsi)
nop
nop
xor $30979, %r14
movb (%rsi), %r13b
dec %rsi
lea addresses_D_ht+0xab4, %r9
clflush (%r9)
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r9), %r14
add %rdi, %rdi
lea addresses_UC_ht+0x1a92, %rcx
nop
cmp $59724, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm5
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm5, (%rcx)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x9be, %rsi
lea addresses_UC_ht+0x58de, %rdi
sub %rbp, %rbp
mov $36, %rcx
rep movsl
nop
cmp %r14, %r14
lea addresses_UC_ht+0xf12, %rsi
lea addresses_UC_ht+0x1bb36, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $126, %rcx
rep movsb
cmp %rdi, %rdi
lea addresses_WC_ht+0x1e71e, %rsi
lea addresses_D_ht+0x9e1e, %rdi
nop
nop
and %rbp, %rbp
mov $101, %rcx
rep movsq
nop
nop
sub $33805, %r9
lea addresses_D_ht+0x1c81e, %rsi
sub %r14, %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rsi)
nop
cmp $35108, %rcx
lea addresses_A_ht+0x8f1e, %rsi
lea addresses_normal_ht+0x11b2e, %rdi
clflush (%rsi)
nop
nop
nop
add $9570, %r13
mov $73, %rcx
rep movsq
nop
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0xc4de, %r8
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%r8)
nop
nop
sub $28520, %r13
lea addresses_UC_ht+0xa01e, %r9
nop
nop
and $2454, %rcx
vmovups (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0xfefe, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rsi

// Store
lea addresses_WC+0x7dde, %r15
nop
nop
and $33111, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%r15)
add %r14, %r14

// Store
lea addresses_A+0xdd2e, %r15
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_A+0x961e, %rax
clflush (%rax)
nop
nop
and %r11, %r11
movl $0x51525354, (%rax)
nop
nop
nop
add %r11, %r11

// Store
lea addresses_RW+0x129f2, %rbp
nop
nop
nop
nop
nop
xor %r14, %r14
movw $0x5152, (%rbp)
nop
xor $26367, %rsi

// Faulty Load
lea addresses_WC+0xfe1e, %rsi
nop
nop
nop
nop
nop
and $17037, %r13
movaps (%rsi), %xmm6
vpextrq $1, %xmm6, %r11
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rsi
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'46': 164, '00': 20045, '45': 123, '48': 1491, '47': 6}
00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 46 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 45 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 45 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 46 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 45 00 00 00 00 00 00 00 00 00 00 48 45 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
