.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x2524, %rcx
nop
nop
and $53329, %r13
mov (%rcx), %esi
xor $13837, %r8
lea addresses_WC_ht+0xaf44, %rsi
lea addresses_WC_ht+0x106c4, %rdi
nop
nop
nop
and $11682, %r9
mov $70, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x1af64, %r8
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_UC_ht+0x186c4, %r8
cmp $20174, %rsi
mov (%r8), %rbp
nop
nop
dec %rcx
lea addresses_D_ht+0x19374, %rcx
nop
nop
nop
nop
xor $21289, %r13
movl $0x61626364, (%rcx)
nop
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x1b346, %rsi
nop
nop
dec %r8
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
nop
nop
and $8954, %r8
lea addresses_D_ht+0x124, %r9
nop
nop
nop
nop
nop
add $5123, %r13
mov (%r9), %esi
nop
nop
nop
nop
nop
cmp $38758, %r8
lea addresses_A_ht+0x3f58, %rsi
nop
nop
nop
nop
dec %r8
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x5b58, %r9
clflush (%r9)
sub $40032, %rdi
mov (%r9), %ebp
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0xd944, %rsi
lea addresses_A_ht+0x190c4, %rdi
nop
nop
nop
nop
nop
lfence
mov $122, %rcx
rep movsq
nop
nop
add %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rax
push %rdx

// Store
lea addresses_normal+0x13dc4, %r14
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovaps %ymm7, (%r14)
nop
cmp $6496, %r12

// Store
lea addresses_A+0x1f6b0, %r12
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%r12)
nop
nop
nop
nop
xor %r14, %r14

// Faulty Load
lea addresses_US+0x1a9c4, %r12
nop
nop
nop
dec %r8
mov (%r12), %r13w
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rdx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'00': 30}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
