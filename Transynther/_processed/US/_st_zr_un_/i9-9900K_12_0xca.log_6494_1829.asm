.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1263e, %rax
nop
nop
nop
add $45019, %r9
movups (%rax), %xmm1
vpextrq $0, %xmm1, %rbp
nop
nop
nop
sub $26436, %rdi
lea addresses_WT_ht+0xe0fe, %rsi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
nop
add $43328, %rdi
lea addresses_A_ht+0xfece, %rbp
nop
nop
nop
sub %r9, %r9
movb (%rbp), %al
nop
add $47115, %rsi
lea addresses_A_ht+0x1ce6e, %rdi
nop
nop
nop
nop
sub %r14, %r14
mov (%rdi), %r9d
nop
nop
and $18476, %rdi
lea addresses_A_ht+0x2e66, %rdi
add $55259, %rbp
movb $0x61, (%rdi)
nop
nop
cmp $27111, %r14
lea addresses_normal_ht+0x1d027, %rsi
lea addresses_UC_ht+0xa4ea, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $34, %rcx
rep movsb
inc %r9
lea addresses_normal_ht+0x18fe, %rsi
lea addresses_WC_ht+0x14cfe, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $78, %rcx
rep movsl
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x1cb7e, %r9
nop
nop
nop
nop
xor %r14, %r14
vmovups (%r9), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
and $45455, %rcx
lea addresses_A_ht+0x2e7e, %rsi
lea addresses_UC_ht+0x5090, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %rax
mov $95, %rcx
rep movsq
nop
sub %r14, %r14
lea addresses_A_ht+0x19fe, %r10
xor $61830, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %r10
vmovntdq %ymm5, (%r10)
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x1b6fe, %rsi
lea addresses_D_ht+0x1013e, %rdi
nop
nop
nop
xor %r10, %r10
mov $34, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $56753, %r10
lea addresses_D_ht+0x57c6, %rbp
nop
inc %r10
movb (%rbp), %r9b
add $64889, %r14
lea addresses_UC_ht+0xa78a, %rsi
lea addresses_UC_ht+0x47cc, %rdi
nop
nop
nop
nop
xor $6122, %rax
mov $69, %rcx
rep movsb
add $41035, %rsi
lea addresses_WC_ht+0x1a579, %rsi
lea addresses_WT_ht+0x617e, %rdi
nop
add $19985, %r10
mov $50, %rcx
rep movsq
nop
nop
nop
add $25313, %rbp
lea addresses_UC_ht+0x30e, %rbp
xor $2632, %rax
mov $0x6162636465666768, %r14
movq %r14, (%rbp)
nop
nop
nop
nop
nop
cmp $9967, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x87fe, %rsi
lea addresses_PSE+0x84fe, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov $19, %rcx
rep movsq
nop
nop
nop
nop
and $16805, %rdi

// Faulty Load
lea addresses_US+0x1d4fe, %r9
nop
nop
nop
xor %r15, %r15
movb (%r9), %bl
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_PSE', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_PSE', 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'5f': 17, '00': 6112, '33': 365}
00 00 00 00 33 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 33 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 33 00 33 00 00 33 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 33 00 00 00 00 00 33 00 00 00 33 00 00 00 00 00 33 00 00 00 00 00 00 00 33 00 00 00 00 00 33 33 33 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 33 00 00 33 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 33 00 33 00 33 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 33 00 00 00 00 00 00 00 33 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 33 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 33 00 33 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 33 00 00 33 00 5f 00 33 33 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00
*/
