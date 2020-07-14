.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1ac3b, %r12
nop
cmp $51299, %r8
mov (%r12), %r15w
inc %rcx
lea addresses_D_ht+0xad37, %rsi
lea addresses_WC_ht+0xee37, %rdi
clflush (%rdi)
nop
cmp %r12, %r12
mov $10, %rcx
rep movsb
dec %rsi
lea addresses_WT_ht+0x1b737, %r8
nop
nop
add $7796, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r8)
nop
nop
nop
dec %r12
lea addresses_WC_ht+0x5b4f, %r9
nop
nop
nop
nop
inc %rdi
movb (%r9), %r15b
nop
nop
nop
nop
nop
inc %r9
lea addresses_D_ht+0x3d7, %r8
nop
nop
nop
nop
xor $51678, %rsi
mov (%r8), %r9
nop
nop
cmp $42444, %rsi
lea addresses_WT_ht+0x13cb7, %rsi
lea addresses_UC_ht+0x10737, %rdi
nop
and %rbx, %rbx
mov $55, %rcx
rep movsb
inc %rdi
lea addresses_A_ht+0x3f77, %rdi
xor %rcx, %rcx
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x1d137, %rsi
lea addresses_normal_ht+0x1d37, %rdi
nop
nop
nop
nop
dec %r15
mov $56, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x186cf, %r8
nop
xor $14013, %rdi
mov (%r8), %ecx
nop
nop
nop
nop
nop
and %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rax
push %rbx

// Faulty Load
lea addresses_WC+0x1e537, %r14
nop
nop
nop
add %r8, %r8
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'45': 2, '00': 16, '46': 18}
00 46 46 00 46 46 00 46 00 00 46 46 46 46 46 46 00 00 00 45 46 46 46 46 00 46 00 00 00 00 45 00 00 00 46 46
*/
