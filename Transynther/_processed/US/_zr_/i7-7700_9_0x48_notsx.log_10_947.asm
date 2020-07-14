.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xf665, %rsi
lea addresses_WT_ht+0x1318d, %rdi
nop
nop
nop
nop
sub $32615, %r11
mov $54, %rcx
rep movsl
nop
nop
nop
nop
cmp $52725, %r12
lea addresses_UC_ht+0x13311, %rdi
nop
add $62926, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
nop
nop
dec %r12
lea addresses_UC_ht+0x7065, %r12
clflush (%r12)
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%r12)
xor $20848, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_US+0x9425, %rsi
mov $0xabc, %rdi
nop
nop
nop
nop
nop
add $18959, %r15
mov $39, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $58323, %r14

// Faulty Load
lea addresses_US+0x14065, %rdx
nop
nop
nop
and $35669, %rdi
vmovups (%rdx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_P'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_US'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
