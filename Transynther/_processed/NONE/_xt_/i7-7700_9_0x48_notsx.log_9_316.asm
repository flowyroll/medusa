.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xac00, %rsi
lea addresses_WC_ht+0x26ba, %rdi
nop
nop
cmp $21471, %r9
mov $7, %rcx
rep movsl
nop
nop
nop
xor $30785, %r13
lea addresses_normal_ht+0x140c, %rax
nop
and $24607, %r11
movw $0x6162, (%rax)
nop
nop
xor $56935, %rcx
lea addresses_UC_ht+0x1d850, %r11
xor $47101, %rsi
movups (%r11), %xmm3
vpextrq $1, %xmm3, %r13
nop
add $18424, %r11
lea addresses_WT_ht+0x19b00, %rcx
cmp %rax, %rax
movb (%rcx), %r9b
inc %r11
lea addresses_normal_ht+0x9800, %rsi
lea addresses_WT_ht+0x7dc0, %rdi
nop
inc %r15
mov $11, %rcx
rep movsb
nop
nop
nop
and %r13, %r13
lea addresses_D_ht+0x48e0, %r9
xor %rcx, %rcx
movw $0x6162, (%r9)
nop
nop
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x8400, %rsi
lea addresses_normal_ht+0x769c, %rdi
nop
cmp $20739, %r13
mov $29, %rcx
rep movsq
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0x1e100, %rsi
nop
dec %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x5b00, %r15
nop
nop
nop
dec %rdi
movl $0x61626364, (%r15)
sub $4867, %rcx
lea addresses_WT_ht+0x14820, %r11
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r11), %eax
nop
nop
nop
add %r9, %r9
lea addresses_D_ht+0x7bb8, %r11
nop
nop
nop
nop
nop
dec %r15
movups (%r11), %xmm1
vpextrq $1, %xmm1, %rdi
nop
sub %r11, %r11
lea addresses_UC_ht+0x18a80, %rsi
lea addresses_D_ht+0x1d400, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $30, %rcx
rep movsb
nop
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi

// Store
mov $0x76721f0000000480, %r13
nop
nop
nop
nop
nop
sub $20694, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovntdq %ymm0, (%r13)
and $53744, %r8

// Faulty Load
lea addresses_D+0x1c800, %rdi
nop
nop
cmp %rbx, %rbx
mov (%rdi), %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'36': 9}
36 36 36 36 36 36 36 36 36
*/
