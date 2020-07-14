.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1275, %rsi
lea addresses_normal_ht+0x7521, %rdi
nop
xor %rax, %rax
mov $33, %rcx
rep movsb
inc %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0x8259, %rdi
nop
nop
nop
nop
add $53173, %r9
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
inc %r9

// Store
lea addresses_D+0x1eb79, %rsi
nop
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
cmp $48323, %rdx

// Store
mov $0x1117bc0000000499, %r9
nop
nop
nop
dec %r14
mov $0x5152535455565758, %rdx
movq %rdx, (%r9)
nop
nop
cmp %r14, %r14

// Store
mov $0x42e0360000000319, %r14
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r14)
nop
inc %r11

// Faulty Load
lea addresses_WT+0x1ce79, %r14
nop
nop
nop
nop
xor $21524, %rdi
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'39': 23}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
