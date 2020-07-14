.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x8832, %rsi
lea addresses_D_ht+0x19a92, %rdi
nop
nop
nop
cmp %rax, %rax
mov $8, %rcx
rep movsb
mfence
lea addresses_UC_ht+0x1e852, %rsi
lea addresses_A_ht+0x169d2, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $33, %rcx
rep movsb
nop
nop
nop
add %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rax
push %rcx
push %rdx

// Load
lea addresses_US+0x4952, %r10
nop
add %r9, %r9
mov (%r10), %rax
sub %rax, %rax

// Store
lea addresses_WC+0x18f93, %rcx
nop
cmp $43555, %rdx
movw $0x5152, (%rcx)
nop
nop
and $18428, %r10

// Faulty Load
lea addresses_WC+0x179d2, %r11
nop
nop
nop
nop
nop
cmp %rdx, %rdx
vmovntdqa (%r11), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_US', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'18': 1, '49': 13, '00': 12}
49 49 00 00 18 49 49 49 49 00 49 49 49 00 00 49 00 00 00 49 00 49 00 00 49 00
*/
