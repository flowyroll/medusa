.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a40a, %r14
nop
cmp $28630, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
sub $64843, %r9
lea addresses_D_ht+0x1ebe7, %rsi
lea addresses_UC_ht+0x766a, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $45, %rcx
rep movsb
nop
add %r14, %r14
lea addresses_A_ht+0x1064a, %rcx
nop
xor $57353, %r10
mov (%rcx), %edi
nop
nop
nop
add $49691, %rsi
lea addresses_normal_ht+0x290a, %r14
nop
nop
nop
nop
nop
and $37553, %r10
mov $0x6162636465666768, %r9
movq %r9, (%r14)
nop
nop
nop
nop
add $55363, %r14
lea addresses_WT_ht+0x5a0a, %rdi
clflush (%rdi)
nop
nop
cmp %rsi, %rsi
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
nop
sub $2103, %rsi
lea addresses_A_ht+0x17e18, %r10
clflush (%r10)
and $23470, %r14
movb $0x61, (%r10)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1a74a, %rsi
lea addresses_normal_ht+0xd4e6, %rdi
nop
nop
nop
nop
xor $14373, %rbp
mov $104, %rcx
rep movsl
nop
nop
nop
nop
cmp $24645, %rbp
lea addresses_UC_ht+0x1c5ea, %r10
nop
nop
nop
nop
cmp %r9, %r9
movb $0x61, (%r10)
nop
nop
sub $52465, %rcx
lea addresses_A_ht+0x570a, %rsi
lea addresses_A_ht+0xfa0a, %rdi
nop
nop
nop
nop
nop
cmp $4154, %r14
mov $18, %rcx
rep movsq
nop
add $37540, %rcx
lea addresses_UC_ht+0xccd2, %rsi
lea addresses_UC_ht+0x6e2a, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $78, %rcx
rep movsb
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x690a, %rbp
nop
nop
nop
xor $13471, %r9
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x12bf6, %rcx
inc %rsi
mov (%rcx), %bx
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdx

// Store
lea addresses_D+0x15e5e, %r13
xor %rcx, %rcx
movb $0x51, (%r13)
nop
nop
inc %rdx

// Store
lea addresses_PSE+0x742a, %r11
nop
nop
nop
nop
nop
inc %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
and %rcx, %rcx

// Load
lea addresses_D+0x173da, %rdx
nop
nop
cmp %rcx, %rcx
vmovups (%rdx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r8
nop
nop
nop
cmp $14818, %r12

// Store
lea addresses_A+0x17a0a, %rax
inc %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
nop
add $5344, %r11

// Store
lea addresses_UC+0x1320a, %rcx
and %r11, %r11
movw $0x5152, (%rcx)
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_A+0xb14a, %r11
nop
nop
nop
nop
inc %rax
movl $0x51525354, (%r11)
nop
add %r12, %r12

// Faulty Load
lea addresses_D+0xa0a, %rdx
inc %r12
vmovups (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
