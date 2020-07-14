.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x17185, %rsi
lea addresses_WC_ht+0x16445, %rdi
nop
nop
nop
nop
dec %rax
mov $29, %rcx
rep movsw
nop
xor $26204, %r13
lea addresses_D_ht+0x1b9c5, %rsi
lea addresses_WT_ht+0x12205, %rdi
nop
nop
nop
and %rbp, %rbp
mov $35, %rcx
rep movsl
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1cbc5, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r12
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
add $33794, %r13
lea addresses_A_ht+0x16fc5, %r13
nop
xor $64204, %r12
movb (%r13), %cl
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x1bec5, %rsi
lea addresses_WT_ht+0xc685, %rdi
add %r8, %r8
mov $1, %rcx
rep movsl
nop
sub $62094, %r12
lea addresses_normal_ht+0x15d95, %r13
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r13)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0xfe15, %r12
nop
nop
nop
nop
nop
cmp %r8, %r8
movb $0x61, (%r12)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x19dc5, %rsi
lea addresses_WT_ht+0x230d, %rdi
nop
nop
and $18861, %r12
mov $97, %rcx
rep movsq
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0xe55, %rsi
lea addresses_WT_ht+0x1c8c5, %rdi
nop
nop
nop
nop
cmp $20004, %r8
mov $125, %rcx
rep movsl
nop
nop
xor $52237, %rsi
lea addresses_WT_ht+0x15065, %r12
nop
nop
sub %r13, %r13
mov (%r12), %esi
nop
nop
nop
nop
cmp $48382, %rdi
lea addresses_WT_ht+0x18cc5, %rsi
lea addresses_A_ht+0x4bc5, %rdi
nop
nop
sub $18271, %r13
mov $112, %rcx
rep movsb
and %rax, %rax
lea addresses_D_ht+0x101c5, %rsi
lea addresses_normal_ht+0x17ce5, %rdi
nop
nop
nop
nop
and $45004, %r12
mov $11, %rcx
rep movsw
nop
xor $47660, %rcx
lea addresses_WT_ht+0x13785, %r8
sub $39022, %rsi
mov (%r8), %r13
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0xeec5, %r12
inc %rcx
vmovups (%r12), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
xor $53177, %rbp
lea addresses_WC_ht+0x5cc5, %rcx
nop
add $26200, %r8
movb (%rcx), %r12b
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rbx

// Store
lea addresses_UC+0x178c5, %r8
clflush (%r8)
nop
add %rbp, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%r8)
nop
nop
nop
and %rax, %rax

// Store
lea addresses_RW+0xf8bb, %r9
nop
nop
nop
sub $9008, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%r9)
nop
nop
cmp $59791, %r9

// Store
mov $0x1091a300000008c5, %rbp
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
xor $54324, %r9

// Store
lea addresses_WC+0x10945, %rax
nop
nop
add $54666, %r14
mov $0x5152535455565758, %rbp
movq %rbp, (%rax)
nop
cmp %r13, %r13

// Store
lea addresses_PSE+0x6e85, %r8
add %rbx, %rbx
movw $0x5152, (%r8)
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_WC+0xe8c5, %rbx
nop
cmp $6153, %r13
movl $0x51525354, (%rbx)
nop
nop
nop
nop
add %r13, %r13

// Faulty Load
mov $0x1091a300000008c5, %rbx
nop
nop
and %r14, %r14
mov (%rbx), %r8w
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'00': 639, '58': 218, '54': 20972}
54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
