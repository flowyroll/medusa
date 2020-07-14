.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x2a84, %rbx
nop
inc %rdx
movb $0x61, (%rbx)
nop
xor $64264, %r9
lea addresses_WC_ht+0x8db0, %rbp
nop
nop
inc %rcx
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0x16f64, %rsi
lea addresses_UC_ht+0x11a08, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $119, %rcx
rep movsq
dec %r13
lea addresses_normal_ht+0x2e84, %rsi
lea addresses_UC_ht+0x5dc4, %rdi
cmp $55377, %r12
mov $51, %rcx
rep movsl
nop
nop
nop
nop
add $25122, %r13
lea addresses_A_ht+0x6d64, %rsi
lea addresses_UC_ht+0x1ae2e, %rdi
add %r13, %r13
mov $90, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0xdc84, %rsi
nop
nop
nop
nop
cmp $8050, %r13
mov (%rsi), %bp
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x17efe, %rsi
lea addresses_UC_ht+0x23e0, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
xor $14424, %rbp
mov $61, %rcx
rep movsq
nop
add %r13, %r13
lea addresses_A_ht+0x6484, %rdi
nop
nop
nop
nop
nop
and $39812, %rbp
mov (%rdi), %cx
nop
nop
cmp $56636, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rbp
push %rdx
push %rsi

// Faulty Load
mov $0x6f5cac0000000684, %r11
nop
nop
dec %rsi
vmovups (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'dst': {'same': True, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 8}}
{'40': 1, '44': 2366, '00': 536, '45': 8273, '08': 1, '47': 2, 'ff': 1}
45 44 45 45 45 45 45 45 45 44 45 44 44 45 45 44 44 44 00 45 45 45 45 45 45 45 00 44 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 44 44 44 44 00 00 44 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 44 44 44 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 44 45 45 45 44 45 45 45 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 44 45 45 45 45 45 44 44 47 44 45 45 45 45 44 45 45 45 45 45 45 44 44 44 45 44 45 44 44 45 45 45 45 45 45 44 44 44 45 45 45 44 44 44 45 45 45 45 45 45 45 45 45 00 44 00 45 44 44 00 44 44 00 44 45 45 45 45 45 45 44 44 45 45 00 00 45 00 45 45 45 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 44 44 44 44 44 44 00 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 44 44 44 45 45 45 45 45 45 45 45 44 45 45 45 00 45 45 45 45 45 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 00 00 44 44 00 44 44 00 44 45 45 44 45 44 44 44 44 44 45 45 45 44 44 44 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 45 44 44 44 45 45 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 44 44 44 44 44 44 45 45 45 45 45 44 44 45 45 45 45 44 44 45 44 44 44 44 00 44 00 44 45 45 45 45 44 44 00 44 45 45 45 45 45 45 45 45 44 00 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45 00 44 44 00 44 00 45 00 45 45 45 44 00 44 44 45 45 44 45 45 45 44 44 45 45 45 45 45 44 44 44 44 44 45 45 45 45 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 44 45 45 45 45 45 44 44 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 44 44 45 44 44 45 45 45 45 00 44 44 45 45 44 45 44 45 45 45 45 45 45 45 44 45 45 45 44 00 44 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 00 44 44 44 44 44 44 00 00 44 45 45 45 45 45 45 45 45 45 44 44 45 45 44 44 44 45 00 45 00 45 44 44 44 44 44 45 45 45 45 45 45 45 45 45 45 45 00 00 00 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 44 00 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45 45 45 00 44 44 44 44 45 44 45 45 44 45 45 45 45 45 45 44 45 45 45 45 45 44 44 44 44 44 44 45 45 45 44 45 45 45 45 45 44 00 44 44 44 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 45 45 45 45 44 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 00 44 45 45 44 44 45 45 45 45 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 44 44 45 45 45 45 45 44 44 45 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 00 44 00 44 44 44 44 44 00 44 45 45 44 00 44 45 44 45 44 44 00 44 45 45 45 45 45 44 45 45 45 45 44 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 44 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 44 45 44 45 44
*/
