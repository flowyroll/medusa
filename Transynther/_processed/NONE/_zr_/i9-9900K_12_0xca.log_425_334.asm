.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x4684, %r12
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%r12)
sub %r8, %r8
lea addresses_D_ht+0xea04, %rsi
lea addresses_A_ht+0x744, %rdi
nop
nop
nop
nop
nop
sub $28674, %r8
mov $127, %rcx
rep movsq
nop
nop
inc %rdi
lea addresses_A_ht+0x5b04, %rsi
lea addresses_normal_ht+0x757e, %rdi
nop
nop
nop
add %r15, %r15
mov $12, %rcx
rep movsq
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0xc3ec, %rsi
lea addresses_A_ht+0x7bf4, %rdi
nop
nop
cmp %r10, %r10
mov $57, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0x1225a, %r12
nop
nop
nop
nop
add %r8, %r8
mov (%r12), %edi
xor $369, %rsi
lea addresses_D_ht+0xe6c4, %rsi
lea addresses_WC_ht+0x13c04, %rdi
nop
nop
nop
nop
inc %r15
mov $58, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x3204, %r8
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r8)
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x16404, %rsi
lea addresses_normal+0x3404, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $91, %rcx
rep movsb
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_normal+0x3404, %rdi
clflush (%rdi)
cmp $610, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rdi)
cmp %rsi, %rsi

// Faulty Load
lea addresses_normal+0x3404, %r13
nop
nop
nop
nop
xor $38485, %r11
movups (%r13), %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_RW', 'congruent': 10}, 'dst': {'same': True, 'type': 'addresses_normal', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'00': 425}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
