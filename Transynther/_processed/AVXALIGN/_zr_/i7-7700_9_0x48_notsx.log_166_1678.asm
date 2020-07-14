.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xb3a1, %rsi
lea addresses_normal_ht+0x12ba1, %rdi
nop
nop
nop
cmp $12568, %r12
mov $18, %rcx
rep movsb
nop
nop
nop
cmp $40910, %r9
lea addresses_WC_ht+0x15da1, %r13
nop
nop
nop
nop
nop
add %rdi, %rdi
movl $0x61626364, (%r13)
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x10661, %rbx
clflush (%rbx)
nop
nop
nop
sub $14004, %rbp
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
sub %r10, %r10

// REPMOV
mov $0xda1, %rsi
mov $0x61, %rdi
nop
nop
nop
dec %rbx
mov $86, %rcx
rep movsw
nop
nop
xor $21891, %rcx

// Faulty Load
lea addresses_D+0x193a1, %rsi
nop
nop
nop
and %r12, %r12
vmovaps (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_P'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_P'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'00': 166}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
