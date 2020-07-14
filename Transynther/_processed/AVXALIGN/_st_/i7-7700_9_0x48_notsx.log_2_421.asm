.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x497c, %rbx
nop
nop
cmp %r10, %r10
movw $0x6162, (%rbx)
nop
dec %rbx
lea addresses_WC_ht+0x11184, %rsi
lea addresses_D_ht+0x1e84, %rdi
nop
cmp $14303, %rdx
mov $18, %rcx
rep movsb
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x1b020, %rsi
add $5671, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%rsi)
nop
nop
xor $13977, %rdx
lea addresses_D_ht+0x10fe, %r10
nop
nop
nop
cmp $49046, %r12
vmovups (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
nop
and $1331, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rbp
push %rdx

// Store
mov $0x5e78960000000944, %r12
nop
nop
nop
nop
nop
inc %r9
movb $0x51, (%r12)
sub %rdx, %rdx

// Store
lea addresses_D+0x18343, %r8
nop
nop
nop
nop
nop
cmp %r11, %r11
movw $0x5152, (%r8)
nop
nop
cmp %r10, %r10

// Faulty Load
lea addresses_D+0x10304, %rbp
nop
nop
nop
nop
nop
add %r8, %r8
movb (%rbp), %r11b
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_NC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 1}}
{'36': 2}
36 36
*/
