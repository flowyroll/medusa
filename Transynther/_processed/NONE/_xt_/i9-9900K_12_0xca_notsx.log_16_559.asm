.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xfbbf, %rsi
nop
nop
nop
nop
nop
and $2278, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0x14947, %rsi
lea addresses_D_ht+0x13c47, %rdi
nop
xor $10969, %rdx
mov $27, %rcx
rep movsq
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x19357, %rsi
lea addresses_D_ht+0x17947, %rdi
nop
nop
nop
xor %r14, %r14
mov $99, %rcx
rep movsl
nop
nop
nop
dec %rbp
lea addresses_A_ht+0x9c47, %r14
nop
nop
nop
nop
nop
cmp $36859, %r10
movb (%r14), %cl
nop
nop
nop
and $51864, %rsi
lea addresses_D_ht+0x9c87, %rcx
add $22576, %rbx
movw $0x6162, (%rcx)
nop
nop
nop
nop
and $23234, %r14
lea addresses_UC_ht+0x16a47, %rdi
nop
nop
nop
nop
and %r10, %r10
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
and %rbp, %rbp
lea addresses_UC_ht+0x1b547, %rdx
add %rsi, %rsi
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %rcx
nop
cmp $18369, %rcx
lea addresses_WT_ht+0xc947, %rsi
lea addresses_A_ht+0x1e447, %rdi
nop
nop
nop
nop
nop
mfence
mov $112, %rcx
rep movsq
nop
nop
add $20700, %rdx
lea addresses_UC_ht+0x1008f, %rbp
nop
nop
nop
nop
and %r10, %r10
mov (%rbp), %rdx
nop
sub $40558, %rbx
lea addresses_WT_ht+0x3247, %rsi
lea addresses_A_ht+0xa3a7, %rdi
nop
nop
nop
nop
lfence
mov $16, %rcx
rep movsb
nop
nop
nop
sub $54102, %r10
lea addresses_UC_ht+0x1dd47, %rsi
lea addresses_WT_ht+0x17cfb, %rdi
nop
and $51483, %r14
mov $89, %rcx
rep movsl
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x6107, %rsi
lea addresses_UC_ht+0xbdc3, %rdi
nop
nop
add $12249, %r10
mov $68, %rcx
rep movsw
nop
nop
nop
and $45262, %rcx
lea addresses_WT_ht+0xe2c7, %rsi
lea addresses_WC_ht+0x1a3ae, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $69, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $25401, %rbx
lea addresses_WC_ht+0x965f, %rsi
lea addresses_normal_ht+0xec7, %rdi
nop
nop
nop
and $6991, %r10
mov $16, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x1761f, %rcx
nop
nop
xor $61451, %rsi
mov (%rcx), %r10d
nop
nop
nop
nop
add $13711, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rdi
push %rsi

// Store
lea addresses_D+0x17547, %r11
nop
and $18799, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
cmp $495, %r13

// Store
lea addresses_normal+0x10547, %r15
nop
nop
inc %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%r15)
nop
and $30147, %r13

// Store
lea addresses_D+0x1fb9f, %r15
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movntdq %xmm6, (%r15)
nop
nop
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_PSE+0x12547, %rsi
nop
nop
nop
nop
and %rdi, %rdi
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %r10
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdi
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': True, 'size': 4, 'congruent': 3}}
{'33': 16}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
