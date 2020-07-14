.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x17738, %rcx
nop
nop
nop
dec %rax
mov (%rcx), %r13
nop
inc %r13
lea addresses_WC_ht+0xf168, %rdx
nop
nop
nop
nop
nop
and $5098, %rbx
movw $0x6162, (%rdx)
add %rcx, %rcx
lea addresses_A_ht+0x113c4, %rsi
lea addresses_WC_ht+0x77f8, %rdi
nop
nop
nop
nop
nop
add $32291, %r10
mov $93, %rcx
rep movsw
nop
nop
nop
nop
and $50776, %rdi
lea addresses_D_ht+0x1896e, %rbx
clflush (%rbx)
nop
nop
nop
nop
and $33076, %r10
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x10ee8, %rdi
and %rsi, %rsi
movb (%rdi), %dl
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x1a324, %rsi
lea addresses_WT_ht+0xa5e8, %rdi
nop
nop
nop
nop
nop
cmp $42274, %rbx
mov $6, %rcx
rep movsl
nop
nop
dec %rbx
lea addresses_A_ht+0x10d3c, %rsi
lea addresses_A_ht+0x163fe, %rdi
xor %r13, %r13
mov $89, %rcx
rep movsl
nop
and $35346, %rsi
lea addresses_WC_ht+0x1b778, %rcx
nop
nop
and %rdi, %rdi
movb $0x61, (%rcx)
nop
nop
nop
sub $31336, %rsi
lea addresses_A_ht+0x12c50, %r10
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
nop
nop
sub $61943, %rdi
lea addresses_D_ht+0x186e8, %rsi
nop
nop
nop
sub %rdx, %rdx
mov (%rsi), %r13w
dec %rbx
lea addresses_D_ht+0x19168, %rcx
sub %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
xor $53330, %rcx
lea addresses_A_ht+0x2c86, %rcx
and %r13, %r13
movb (%rcx), %al
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x53b0, %rsi
lea addresses_D_ht+0x185e8, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %r10, %r10
mov $103, %rcx
rep movsq
cmp %rcx, %rcx
lea addresses_A_ht+0xc646, %r13
nop
nop
nop
nop
add %r10, %r10
mov (%r13), %rcx
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0xf648, %rsi
lea addresses_D_ht+0x10b48, %rdi
inc %rbx
mov $53, %rcx
rep movsq
nop
nop
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rdx

// Store
lea addresses_WC+0xd988, %rbx
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovntdq %ymm7, (%rbx)
nop
cmp %rbx, %rbx

// Store
lea addresses_US+0x155e8, %r13
nop
inc %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movntdq %xmm0, (%r13)
nop
sub %r15, %r15

// Store
lea addresses_D+0x184fc, %rbx
nop
nop
nop
add $31518, %r13
movw $0x5152, (%rbx)
nop
nop
sub %r9, %r9

// Faulty Load
mov $0x57281900000005e8, %rax
nop
nop
nop
inc %r13
movups (%rax), %xmm7
vpextrq $0, %xmm7, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'6d': 1249, '58': 494, '00': 204}
00 00 58 58 58 6d 6d 58 6d 6d 58 6d 6d 00 6d 00 6d 58 6d 58 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 58 00 6d 00 00 00 6d 6d 6d 00 6d 58 00 6d 6d 58 6d 6d 6d 6d 6d 58 58 58 6d 6d 6d 6d 6d 6d 58 6d 6d 58 6d 58 6d 6d 00 6d 6d 00 6d 6d 00 58 58 58 58 6d 6d 6d 58 58 6d 6d 58 6d 6d 00 58 6d 6d 6d 58 6d 6d 6d 58 00 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 6d 58 6d 6d 6d 6d 58 58 6d 58 6d 6d 58 58 6d 6d 58 6d 6d 6d 6d 6d 6d 58 6d 6d 58 58 6d 6d 6d 6d 6d 00 6d 00 58 6d 58 58 00 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 58 6d 58 6d 00 6d 6d 58 6d 6d 58 58 6d 6d 6d 6d 58 00 58 6d 58 6d 6d 58 6d 6d 00 58 58 58 6d 00 6d 6d 58 6d 6d 58 6d 58 6d 58 00 58 00 6d 6d 58 58 6d 6d 6d 00 58 58 58 6d 6d 6d 6d 58 58 6d 6d 00 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 58 58 00 6d 6d 58 58 58 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 58 6d 6d 00 6d 6d 58 6d 6d 00 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 58 6d 58 58 58 58 6d 58 58 58 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 58 00 6d 6d 6d 58 6d 58 6d 58 58 00 6d 58 6d 58 6d 6d 6d 6d 58 6d 58 00 6d 6d 58 58 58 58 00 58 58 58 58 6d 58 58 6d 6d 6d 58 6d 58 6d 6d 6d 6d 6d 00 58 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 58 58 00 6d 6d 58 6d 00 58 58 58 6d 6d 6d 00 6d 6d 6d 6d 6d 58 58 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 00 58 6d 6d 58 58 58 6d 6d 6d 58 6d 6d 6d 58 6d 6d 6d 6d 58 6d 00 6d 6d 58 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 58 58 00 58 58 6d 00 58 6d 6d 58 6d 6d 58 00 58 58 00 58 58 58 6d 6d 6d 6d 6d 58 6d 6d 00 58 58 6d 58 6d 58 58 58 58 6d 58 6d 6d 58 00 00 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 00 6d 6d 6d 6d 6d 00 58 00 6d 6d 6d 58 6d 6d 00 6d 6d 6d 6d 6d 6d 6d 58 00 6d 58 58 6d 6d 00 6d 00 58 58 00 6d 58 58 58 00 6d 6d 6d 6d 6d 6d 6d 58 58 6d 58 00 58 6d 6d 6d 58 58 00 6d 6d 6d 6d 6d 6d 6d 58 6d 58 6d 6d 6d 58 58 58 6d 58 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 58 6d 6d 58 00 6d 58 6d 6d 58 6d 6d 00 6d 6d 58 6d 6d 58 58 00 6d 6d 6d 6d 6d 6d 58 58 58 58 6d 58 00 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 58 58 6d 6d 6d 6d 00 58 6d 00 6d 6d 6d 6d 6d 6d 58 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 00 58 58 6d 58 6d 6d 00 6d 6d 58 58 6d 6d 00 6d 6d 6d 6d 00 6d 6d 58 6d 6d 6d 6d 6d 00 6d 6d 6d 6d 6d 58 6d 58 6d 6d 00 58 6d 6d 6d 6d 6d 58 58 6d 6d 58 6d 6d 00 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 58 6d 6d 00 6d 6d 58 6d 6d 6d 6d 6d 6d 00 58 6d 6d 6d 00 6d 6d 6d 58 6d 58 58 6d 6d 6d 00 00 6d 58 00 58 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 58 58 6d 6d 6d 58 6d 58 58 6d 6d 6d 6d 6d 6d 58 6d 00 58 58 6d 6d 6d 58 00 00 58 58 6d 6d 6d 58 58 58 6d 58 00 58 58 6d 6d 58 6d 6d 58 00 6d 6d 6d 00 6d 6d 58 6d 58 6d 00 6d 6d 6d 6d 6d 6d 6d 6d 00 58 58 6d 6d 6d 00 6d 58 6d 6d 6d 6d 6d 58 6d 6d 58 6d 6d 58 58 58 6d 6d 6d 6d 00 00 6d 00 58 58 58 58 6d 6d 58 58 6d 6d 00 58 6d 6d 6d 6d 6d 00 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 58 6d 6d 6d 6d 6d 6d 58 6d 6d 00 6d 6d 58 6d 58 58 58 58 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 00 6d 6d 58 00 6d 6d 6d 6d 00 00 6d 6d 6d 6d
*/
