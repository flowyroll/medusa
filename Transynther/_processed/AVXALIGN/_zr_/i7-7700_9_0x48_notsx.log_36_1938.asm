.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rsi
lea addresses_A_ht+0x3724, %rsi
cmp $28130, %r10
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
nop
and $32978, %r11
lea addresses_WC_ht+0xcd3d, %r14
nop
nop
nop
nop
dec %r10
movb $0x61, (%r14)
nop
nop
nop
and $6779, %r11
pop %rsi
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x2c74, %rdi
nop
nop
cmp $32456, %r9
movb $0x51, (%rdi)
nop
cmp $26537, %rcx

// REPMOV
lea addresses_PSE+0xf124, %rsi
lea addresses_D+0x7464, %rdi
nop
nop
nop
nop
xor $15590, %r13
mov $99, %rcx
rep movsw
nop
nop
nop
and %rdi, %rdi

// Store
mov $0x214, %r9
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%r9)
nop
dec %rax

// Load
lea addresses_A+0x3124, %rdi
nop
add $16029, %rsi
vmovaps (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_PSE+0x2124, %r13
nop
xor $39007, %rdi
mov $0x5152535455565758, %rax
movq %rax, (%r13)
nop
nop
xor %rdi, %rdi

// Store
mov $0xbc, %rax
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, (%rax)
nop
nop
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_A+0x3124, %rcx
nop
nop
sub $20880, %r9
vmovntdqa (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_PSE'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'00': 36}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
