.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x40ec, %r11
clflush (%r11)
dec %r10
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x14b44, %rsi
lea addresses_normal_ht+0x4c0c, %rdi
nop
nop
nop
nop
add $39200, %r8
mov $59, %rcx
rep movsl
nop
nop
dec %rdi
lea addresses_WC_ht+0x10ec, %rsi
lea addresses_normal_ht+0x16c72, %rdi
nop
cmp $10957, %r15
mov $123, %rcx
rep movsl
nop
nop
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0xf5ac, %rsi
mov $0x5538730000000321, %rdi
clflush (%rsi)
nop
nop
nop
dec %rbx
mov $113, %rcx
rep movsb
nop
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_A+0x14bac, %rbx
nop
nop
cmp $38662, %r10
vmovups (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r11
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_NC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'49': 1, '00': 8}
49 00 00 00 00 00 00 00 00
*/
