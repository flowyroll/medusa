.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xef0e, %rdi
nop
nop
dec %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0x1ed2d, %rsi
lea addresses_WT_ht+0x17252, %rdi
nop
nop
nop
xor $30810, %r11
mov $71, %rcx
rep movsb
cmp %rsi, %rsi
lea addresses_D_ht+0xf474, %rcx
nop
nop
dec %r12
movb $0x61, (%rcx)
nop
nop
and $57401, %r12
lea addresses_D_ht+0x2352, %rdx
nop
nop
nop
nop
xor %rsi, %rsi
mov (%rdx), %ecx
dec %rdx
lea addresses_UC_ht+0xcf92, %r11
sub $50897, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
nop
nop
nop
nop
add $31194, %rsi
lea addresses_WC_ht+0x18092, %r12
nop
nop
add $18550, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r12)
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x10f52, %rdi
nop
nop
nop
nop
nop
sub $20167, %rsi
mov (%rdi), %r12d
nop
nop
nop
nop
nop
xor $36633, %rdx
lea addresses_WC_ht+0x19a7e, %r11
nop
nop
nop
and %rsi, %rsi
movups (%r11), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
inc %rdx
lea addresses_WT_ht+0x1ec52, %rdx
cmp %rdi, %rdi
mov (%rdx), %r12w
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x12312, %rcx
nop
nop
nop
xor $58, %rsi
movl $0x61626364, (%rcx)
nop
dec %r12
lea addresses_UC_ht+0xfc52, %rdi
nop
nop
and %r12, %r12
mov (%rdi), %r10
nop
and $53822, %r11
lea addresses_WT_ht+0x9e52, %rsi
lea addresses_D_ht+0x1c652, %rdi
nop
nop
nop
dec %r9
mov $17, %rcx
rep movsl
nop
nop
nop
nop
nop
and $2470, %r11
lea addresses_WT_ht+0x1a652, %r12
xor %r10, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%r12)
nop
nop
cmp $34265, %r12
pop %rsi
pop %rdx
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
push %r12
push %r14
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_A+0xc059, %r12
nop
nop
nop
nop
add $9357, %rsi
mov $0x5152535455565758, %rax
movq %rax, (%r12)
nop
nop
nop
nop
sub $23991, %rdx

// Store
lea addresses_UC+0x11152, %r11
nop
nop
dec %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movaps %xmm4, (%r11)
nop
nop
nop
nop
nop
sub $7165, %rdx

// Load
lea addresses_PSE+0x892b, %rsi
nop
nop
nop
nop
add %r9, %r9
movb (%rsi), %al
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_PSE+0x3e52, %r11
nop
nop
nop
nop
and $32806, %rsi
mov (%r11), %edx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'33': 542}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
