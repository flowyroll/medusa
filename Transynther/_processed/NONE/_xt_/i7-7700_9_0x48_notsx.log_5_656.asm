.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x2935, %rsi
lea addresses_A_ht+0x11da5, %rdi
nop
add %r9, %r9
mov $80, %rcx
rep movsl
nop
nop
inc %r8
lea addresses_A_ht+0x19675, %r14
nop
and %r13, %r13
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x7275, %rsi
lea addresses_PSE+0x14655, %rdi
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $40, %rcx
rep movsw
nop
nop
nop
nop
xor $7844, %r11

// Store
mov $0x30b76e0000000875, %r14
nop
nop
nop
nop
nop
xor $947, %rbx
movl $0x51525354, (%r14)
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_RW+0x15075, %r14
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r14), %bx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_PSE'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 4}}
{'32': 5}
32 32 32 32 32
*/
