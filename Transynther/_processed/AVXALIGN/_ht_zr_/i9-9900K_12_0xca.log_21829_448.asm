.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x12a87, %rax
nop
add $41488, %r13
mov $0x6162636465666768, %r14
movq %r14, (%rax)
nop
nop
nop
add %r8, %r8
lea addresses_UC_ht+0x362f, %r14
nop
nop
nop
nop
nop
add $65351, %r9
movw $0x6162, (%r14)
nop
nop
xor $39541, %r9
lea addresses_UC_ht+0x1502f, %rsi
lea addresses_WC_ht+0xb647, %rdi
nop
nop
nop
nop
inc %rax
mov $72, %rcx
rep movsq
nop
sub $22904, %r13
lea addresses_normal_ht+0xdb87, %rsi
lea addresses_UC_ht+0x12e87, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $57, %rcx
rep movsw
nop
xor $15877, %r8
lea addresses_normal_ht+0xfe87, %rsi
lea addresses_WT_ht+0xc887, %rdi
nop
nop
nop
and %rax, %rax
mov $96, %rcx
rep movsb
nop
nop
nop
nop
add $20708, %r9
lea addresses_WC_ht+0x18687, %rsi
lea addresses_A_ht+0x9387, %rdi
nop
nop
inc %rax
mov $103, %rcx
rep movsw
add %r14, %r14
lea addresses_WC_ht+0x5507, %rsi
lea addresses_WT_ht+0xbce7, %rdi
nop
nop
nop
add $18330, %r14
mov $112, %rcx
rep movsq
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x12a07, %r14
nop
nop
nop
nop
nop
and $4347, %r13
mov (%r14), %r8
nop
nop
inc %rdi
lea addresses_WC_ht+0x7d87, %rsi
lea addresses_A_ht+0x19287, %rdi
nop
nop
and %rax, %rax
mov $58, %rcx
rep movsq
nop
nop
cmp $54515, %rsi
lea addresses_normal_ht+0x1072a, %r8
sub $46154, %r9
movb (%r8), %r13b
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x1c087, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x9c07, %rsi
lea addresses_WT_ht+0x6e87, %rdi
nop
nop
nop
nop
nop
and $48860, %rax
mov $118, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x1e1f7, %rdi
nop
nop
nop
inc %r13
movb (%rdi), %r9b
nop
inc %rcx
lea addresses_WC_ht+0x1687, %rsi
lea addresses_UC_ht+0x12fab, %rdi
nop
nop
sub $41680, %rax
mov $53, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $41477, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rbx
push %rcx
push %rdi
push %rdx

// Load
mov $0x3464440000000e87, %rbx
nop
nop
nop
nop
nop
sub $13025, %rdi
movb (%rbx), %dl
nop
nop
nop
sub %r10, %r10

// Faulty Load
lea addresses_A+0xd687, %rbx
cmp $48301, %r8
movntdqa (%rbx), %xmm4
vpextrq $1, %xmm4, %rcx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'44': 5184, '00': 16094, '48': 551}
48 44 00 00 00 00 44 48 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 48 00 00 00 44 44 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 44 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 48 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 00 00 44 48 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 44 48 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 00 00 44 48 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 44 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 48 00 00 00 44 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 00 44 48 00 00 48 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 48 00 00 48 44 00 00 00 44 44 00 00 00 00 44 00 00 00 44 44 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 44 00 00 48 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 44 48 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 44 48 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 44 44 48 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 44 44 00 00 00 48 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 44 44 48 00 00 00 44 00 00 00 44 44 48 00 00 48 00 00 00 00 44 48 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 00 44 44 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00
*/
