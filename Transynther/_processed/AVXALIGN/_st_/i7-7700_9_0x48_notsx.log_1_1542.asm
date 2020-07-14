.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1d21a, %rsi
lea addresses_D_ht+0xda02, %rdi
nop
nop
nop
cmp $14174, %r11
mov $10, %rcx
rep movsw
nop
nop
nop
and $50624, %r11
lea addresses_normal_ht+0x4d72, %rsi
lea addresses_WT_ht+0x1b0a2, %rdi
nop
nop
nop
sub $5845, %r14
mov $50, %rcx
rep movsq
nop
nop
nop
sub $26222, %r11
lea addresses_A_ht+0x11122, %rsi
lea addresses_normal_ht+0xc2, %rdi
nop
dec %r13
mov $27, %rcx
rep movsb
nop
and $24602, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx

// Load
lea addresses_US+0x122, %rcx
cmp %rdi, %rdi
vmovaps (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_WC+0x13122, %rdx
nop
add %r12, %r12
movw $0x5152, (%rdx)
xor %r13, %r13

// Faulty Load
lea addresses_D+0x15922, %r15
nop
add $12829, %r12
mov (%r15), %rdx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_US', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'36': 1}
36
*/
