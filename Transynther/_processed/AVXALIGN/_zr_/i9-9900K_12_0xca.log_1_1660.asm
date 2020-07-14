.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1d15f, %rsi
lea addresses_D_ht+0x16df, %rdi
clflush (%rdi)
nop
add %r11, %r11
mov $55, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $10138, %r13
lea addresses_normal_ht+0x515f, %rsi
lea addresses_normal_ht+0x6237, %rdi
sub $3122, %r9
mov $49, %rcx
rep movsw
xor %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x1c95f, %rsi
lea addresses_normal+0x15d07, %rdi
nop
nop
xor %r14, %r14
mov $66, %rcx
rep movsb
nop
nop
add $9906, %rax

// Store
lea addresses_RW+0x23f, %rax
nop
add $17122, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rax)
nop
nop
and $16642, %rsi

// Store
lea addresses_WC+0x1a15f, %rcx
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rcx)
dec %r15

// Store
mov $0x68802000000061f, %rsi
nop
nop
nop
add $63715, %r12
movw $0x5152, (%rsi)
nop
nop
nop
cmp $6079, %r15

// Load
lea addresses_PSE+0x15bef, %rdi
nop
nop
nop
cmp $9343, %rsi
mov (%rdi), %r12w
nop
nop
add $18271, %rcx

// Faulty Load
lea addresses_WC+0x1c95f, %r14
nop
nop
nop
nop
nop
and $60322, %rcx
movntdqa (%r14), %xmm1
vpextrq $1, %xmm1, %rsi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_normal', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'00': 1}
00
*/
