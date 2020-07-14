.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xfb67, %rsi
lea addresses_normal_ht+0xb81f, %rdi
nop
nop
nop
nop
dec %rax
mov $35, %rcx
rep movsw
nop
xor $1386, %r10
lea addresses_UC_ht+0x19c7f, %r15
nop
nop
sub %rsi, %rsi
movb (%r15), %al
nop
nop
sub %r10, %r10
lea addresses_normal_ht+0x1401f, %r15
clflush (%r15)
nop
and $56034, %rcx
mov (%r15), %rax
nop
nop
nop
nop
xor $21025, %rax
lea addresses_D_ht+0x32f, %rsi
lea addresses_D_ht+0x801f, %rdi
nop
nop
dec %r10
mov $12, %rcx
rep movsq
nop
and %rdi, %rdi
lea addresses_WC_ht+0x1269f, %rdi
cmp %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
and %rsi, %rsi
lea addresses_normal_ht+0x1d13b, %r12
nop
nop
nop
nop
nop
cmp $23317, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%r12)
nop
xor $15515, %rsi
lea addresses_UC_ht+0x481f, %rax
nop
nop
nop
cmp $60665, %r12
and $0xffffffffffffffc0, %rax
movntdqa (%rax), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %r8
push %rdi

// Store
lea addresses_WT+0xfecb, %r8
nop
nop
nop
nop
and $29922, %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%r8)
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_UC+0xf81f, %r15
nop
nop
nop
nop
cmp $3821, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movaps %xmm6, (%r15)
nop
nop
cmp %r12, %r12

// Faulty Load
lea addresses_PSE+0x1201f, %r11
clflush (%r11)
nop
xor $22989, %r14
movups (%r11), %xmm5
vpextrq $1, %xmm5, %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'33': 6}
33 33 33 33 33 33
*/
