.global s_prepare_buffers
s_prepare_buffers:
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xd396, %rsi
lea addresses_WT_ht+0xf1d6, %rdi
nop
sub $32669, %rbx
mov $77, %rcx
rep movsw
nop
nop
nop
nop
and $35182, %rbp
lea addresses_normal_ht+0x14866, %rdi
nop
add %rbx, %rbx
movl $0x61626364, (%rdi)
nop
nop
cmp $56074, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbp
push %rdx
push %rsi

// Store
lea addresses_UC+0x10536, %r13
nop
nop
nop
nop
nop
and %rsi, %rsi
movb $0x51, (%r13)
nop
nop
nop
nop
cmp $8495, %rsi

// Faulty Load
lea addresses_D+0x173d6, %r8
nop
nop
nop
nop
nop
dec %rdx
vmovups (%r8), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'36': 66}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
