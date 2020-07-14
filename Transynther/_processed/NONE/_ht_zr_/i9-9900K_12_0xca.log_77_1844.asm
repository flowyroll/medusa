.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x18521, %rsi
lea addresses_UC_ht+0xaf09, %rdi
nop
nop
nop
nop
sub $34471, %r8
mov $91, %rcx
rep movsq
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x7d4d, %rsi
lea addresses_normal_ht+0x205e, %rdi
nop
nop
nop
nop
sub $14485, %rbp
mov $77, %rcx
rep movsb
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x1aca1, %rbx
nop
sub $58431, %r11
mov (%rbx), %rdi
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rbx
push %rdi
push %rsi

// Faulty Load
lea addresses_WT+0x156a1, %rsi
add $44136, %rbx
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r11
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rbx
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'45': 46, '49': 19, '00': 12}
45 45 45 45 45 45 45 49 45 49 45 45 45 45 49 45 45 00 49 45 45 45 45 45 45 00 00 45 00 45 00 49 45 45 45 49 49 45 49 49 49 00 45 00 45 00 45 49 45 45 45 00 49 49 45 45 45 45 45 45 45 49 45 45 45 00 45 45 49 00 49 49 49 45 45 49 00
*/
