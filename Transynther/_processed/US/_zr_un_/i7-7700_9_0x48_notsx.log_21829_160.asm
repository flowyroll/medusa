.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xa487, %rbp
cmp %rdx, %rdx
movl $0x61626364, (%rbp)
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x9d47, %rdi
nop
nop
nop
nop
cmp %r14, %r14
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
dec %rbx
lea addresses_UC_ht+0x1a3d5, %rsi
lea addresses_WC_ht+0x1ea87, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov $35, %rcx
rep movsl
nop
nop
nop
and %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x1f647, %r9
nop
add %r11, %r11
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
sub %r11, %r11

// REPMOV
lea addresses_RW+0x17a87, %rsi
lea addresses_PSE+0x1f287, %rdi
nop
nop
cmp $32381, %r11
mov $78, %rcx
rep movsl
nop
nop
nop
add %r11, %r11

// REPMOV
lea addresses_D+0xdf27, %rsi
lea addresses_PSE+0x19e7, %rdi
clflush (%rsi)
nop
nop
nop
sub %r15, %r15
mov $30, %rcx
rep movsw
nop
nop
add $14190, %r9

// Store
lea addresses_D+0x10a87, %r15
nop
nop
xor $58365, %rsi
movb $0x51, (%r15)
nop
nop
nop
nop
xor $51394, %rdi

// Faulty Load
lea addresses_US+0x18a87, %rdi
nop
sub $35544, %rcx
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_RW'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'05': 569, '04': 1, '72': 2, '00': 20155, '78': 1095, '08': 7}
04 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 78 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 78 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 78 00 00 00 00 00 00 00 05 00 00 00 78 00 00 00 00 00 00 78 78 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 78 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 05 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 78 00 00 00 05 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 78 00 00 00 00 78 00 00 00 00 00 00 00 05 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 78 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 78 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 72 00 00 78 00 00 05 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 78 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 78 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 05 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 05 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 78 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 00 00 00 00 00 00 00 00 00 78 78 00 00 78 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78
*/
