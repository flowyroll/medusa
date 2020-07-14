.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xd0db, %rbx
nop
nop
nop
nop
nop
and %r10, %r10
movw $0x6162, (%rbx)
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x1d7cb, %rsi
lea addresses_UC_ht+0x240b, %rdi
nop
xor $17105, %r15
mov $48, %rcx
rep movsb
nop
nop
nop
nop
sub $7124, %rdi
lea addresses_normal_ht+0x10cb6, %r15
clflush (%r15)
nop
nop
nop
nop
nop
and %r13, %r13
movl $0x61626364, (%r15)
cmp $29237, %r15
lea addresses_UC_ht+0xd9cb, %rsi
nop
nop
nop
nop
nop
inc %r15
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rdi
cmp %r15, %r15
lea addresses_UC_ht+0x19423, %rsi
lea addresses_A_ht+0x172ad, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $115, %rcx
rep movsl
sub $422, %r10
lea addresses_WC_ht+0x7cb, %r10
nop
mfence
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
add %r13, %r13
lea addresses_normal_ht+0x986b, %rsi
lea addresses_D_ht+0xc6b, %rdi
clflush (%rsi)
nop
nop
add %rbx, %rbx
mov $57, %rcx
rep movsl
nop
add %rcx, %rcx
lea addresses_normal_ht+0x135cb, %rsi
lea addresses_UC_ht+0x1c96, %rdi
nop
nop
nop
xor $18140, %r13
mov $16, %rcx
rep movsb
nop
nop
nop
and $64855, %rsi
lea addresses_UC_ht+0x500b, %rcx
nop
nop
nop
nop
dec %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rax
push %rcx
push %rdx
push %rsi

// Store
mov $0x3b3, %rdx
nop
nop
nop
nop
xor $60897, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movaps %xmm0, (%rdx)
nop
nop
nop
nop
inc %r11

// Faulty Load
lea addresses_normal+0x111cb, %r9
nop
nop
nop
inc %rsi
movups (%r9), %xmm2
vpextrq $0, %xmm2, %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
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
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_P', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'34': 715}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
